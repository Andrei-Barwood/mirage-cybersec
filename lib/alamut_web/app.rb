require 'sinatra/base'
require 'kramdown'
require 'json'
require 'prawn'
require_relative 'system_report_generator'
require_relative 'episode_report_generator'

module AlamutWeb
  class App < Sinatra::Base
    set :public_folder, File.expand_path('public', __dir__)
    set :views, File.expand_path('views', __dir__)
    set :port, 9200
    set :bind, '0.0.0.0'

    get '/' do
      @episodes = (1..108).map { |i| i.to_s }
      erb :dashboard
    end

    post '/run/:episode' do
      ep = params[:episode].to_s.rjust(2, '0')
      file = File.expand_path("../../test/episodios/ep#{ep}_test.rb", __dir__)
      
      if File.exist?(file)
        raw_output = `ruby -I lib #{file} -v 2>&1`
        exit_code = $?.exitstatus

        prompt_file = File.expand_path("../../prompts/ep#{ep}_prompt.md", __dir__)
        threat_signature = "DESCONOCIDA"
        if File.exist?(prompt_file)
          title_line = File.readlines(prompt_file).first(10).find { |l| l.start_with?('# ') }
          threat_signature = title_line.gsub('#', '').strip if title_line
        end

        operator = ep.to_i <= 54 ? "Roshan bint-La'Ahad (Hija de Nadie)" : "Basim Ibn Ishaq (Maestro Oculto)"
        timestamp = Time.now.strftime('%Y-%m-%d %H:%M:%S UTC')
        header = <<~TXT
          ========================================================================
          [ALAMUT OS v9.8] INICIANDO PROTOCOLO DE AUDITORÍA Y NEUTRALIZACIÓN
          ========================================================================
          > FECHA DE SINCRONIZACIÓN: #{timestamp}
          > AGENTE ASIGNADO: #{operator}
          > OBJETIVO DE LA OPERACIÓN: SECTOR EP#{ep} (#{ep.to_i <= 54 ? "Daughter of No One" : "Assassin's Creed Mirage"})
          > FIRMA DE LA AMENAZA: #{threat_signature}
          > CONEXIÓN CON EL ANIMUS: ENCLAVE CUÁNTICO ESTABLE
          > DESPLEGANDO HOJA OCULTA Y ALGORITMOS DE DEFENSA CRIPTOGRÁFICA... OK
          
          ------------------------------------------------------------------------
          [VOLCADO DE TELEMETRÍA DEL MOTOR DE PRUEBAS MINITEST]
          ------------------------------------------------------------------------

        TXT

        footer = <<~TXT

          ------------------------------------------------------------------------
          [FIN DE TELEMETRÍA DE LA MISIÓN]
          ------------------------------------------------------------------------
          > ANALIZANDO INTEGRIDAD DE LA MEMORIA DEL ANIMUS...
          > CÓDIGO DE RETORNO: #{exit_code}
          #{exit_code == 0 ? '> ESTADO: [ÉXITO ROTUNDO] AMENAZA NEUTRALIZADA. EL CREDO PREVALECE.' : '> ESTADO: [FALLO CRÍTICO] VULNERABILIDAD PERSISTE. REQUIERE INTERVENCIÓN.'}
          ========================================================================
          [ALAMUT OS] REPORTE DE INCIDENTE FINALIZADO.
          ========================================================================
        TXT

        output = header + raw_output + footer
      else
        output = "Archivo de prueba no encontrado para el episodio: #{file}"
        exit_code = 1
      end
      
      content_type :json
      { episode: ep, output: output, exit_code: exit_code }.to_json
    end

    get '/prompt/:episode' do
      ep = params[:episode].to_s.rjust(2, '0')
      file_path = File.expand_path("../../prompts/ep#{ep}_prompt.md", __dir__)
      
      if File.exist?(file_path)
        content = File.read(file_path)
        html = Kramdown::Document.new(content).to_html
      else
        html = "<h2>Prompt no encontrado para el episodio #{ep}</h2>"
      end

      content_type :json
      { html: html }.to_json
    end

    get '/dossier_daughter_of_no_one' do
      file_path = File.expand_path("../../prompts/00_DAUGHTER_OF_NO_ONE_PROMPTS_MASTER.md", __dir__)
      if File.exist?(file_path)
        content = File.read(file_path)
        html = Kramdown::Document.new(content).to_html
        content_type :json
        { html: html }.to_json
      else
        content_type :json
        { html: "<h2>Dossier de Daughter of No One no encontrado.</h2>" }.to_json
      end
    end

    get '/pdf/:episode' do
      ep = params[:episode].to_s.rjust(2, '0')
      pdf_data = AlamutWeb::EpisodeReportGenerator.generate(ep)
      content_type 'application/pdf'
      attachment "Reporte_Alamut_Ep#{ep}.pdf"
      pdf_data
    end

    get '/system_report' do
      pdf_data = AlamutWeb::SystemReportGenerator.generate
      content_type 'application/pdf'
      attachment "Reporte_Global_Alamut_108_Episodios.pdf"
      pdf_data
    end
  end
end
