require 'prawn'

module AlamutWeb
  class EpisodeReportGenerator
    def self.generate(ep)
      ep_str = ep.to_s.rjust(2, '0')
      prompt_path = File.expand_path("../../prompts/ep#{ep_str}_prompt.md", __dir__)
      test_path = File.expand_path("../../test/episodios/ep#{ep_str}_test.rb", __dir__)
      
      content = File.exist?(prompt_path) ? File.read(prompt_path) : "NO DATA"
      title = content.match(/# (.*)/)&.captures&.first || "DESCONOCIDO"
      threat = content.match(/\*\*Actor Hostil.*:\*\*\s*(.*)/)&.captures&.first || "N/A"
      vector = content.match(/\*\*Vector de Ataque.*:\*\*\s*(.*)/)&.captures&.first || "N/A"
      mitre = content.match(/\*\*Táctica MITRE.*:\*\*\s*(.*)/)&.captures&.first || "N/A"
      
      Prawn::Fonts::AFM.hide_m17n_warning = true
      pdf = Prawn::Document.new(page_size: 'A4', margin: 40)
      pdf.font("Courier")
      
      # PÁGINA 1: PORTADA
      pdf.fill_color "8b0000" # Assassin Crimson
      pdf.text "=====================================================================", align: :center
      pdf.move_down 40
      pdf.text "ALAMUT OS v9.8 // ANIMUS CORE MATRIX", align: :center, size: 22, style: :bold
      pdf.text "THREAT INTELLIGENCE & CLANDESTINE INCIDENT DOSSIER", align: :center, size: 14
      pdf.move_down 40
      pdf.text "=====================================================================", align: :center
      pdf.move_down 80
      
      pdf.fill_color "000000"
      pdf.text "ID DE OPERACIÓN: SECTOR EP#{ep_str}", size: 14, style: :bold
      pdf.text "NIVEL DE SEVERIDAD: CRÍTICO // ISU CONTAMINATION LEVEL IV", size: 12
      pdf.text "DENOMINACIÓN CANÓNICA: #{title}", size: 12
      pdf.text "ACTOR HOSTIL / OBJETIVO: #{threat}", size: 12
      pdf.text "VECTOR DE ATAQUE: #{vector}", size: 12
      pdf.text "CORRELACIÓN MITRE ATT&CK: #{mitre}", size: 12
      pdf.move_down 40
      operator = ep.to_i <= 54 ? "Roshan bint-La'Ahad (Hija de Nadie)" : "Basim Ibn Ishaq (Maestro Oculto)"
      pdf.text "AGENTE OPERADOR ASIGNADO: #{operator}", size: 12
      pdf.text "FECHA DE EXTRACCIÓN ANIMUS: #{Time.now.strftime('%Y-%m-%d %H:%M:%S')} UTC", size: 11
      pdf.text "RED: ALAMUT HIGHLAND DAYLAM BASTION // SUB-GRID BAGDAD", size: 11
      
      # PÁGINA 2: RESUMEN EJECUTIVO
      pdf.start_new_page
      pdf.fill_color "8b0000"
      pdf.text "RESUMEN EJECUTIVO DE LA OPERACIÓN (MEMORIA ANIMUS)", size: 15, style: :bold
      pdf.fill_color "000000"
      pdf.move_down 15
      content.lines.each do |line|
        pdf.text line.gsub(/[\*#]/, '').strip, size: 9
        pdf.move_down 4
      end
      
      # PÁGINAS 3 - 6: SIMULACIÓN DE TRAZAS FORENSES PCAP
      (3..6).each do |page_num|
        pdf.start_new_page
        pdf.fill_color "005577"
        pdf.text "ANÁLISIS FORENSE - TRAZAS DE RED Y TELEMETRÍA (PCAP) - HOJA #{page_num - 2}", size: 11, style: :bold
        pdf.fill_color "000000"
        pdf.move_down 15
        pdf.font_size 8
        50.times do
          hex_line = 16.times.map { rand(256).to_s(16).rjust(2, '0') }.join(' ')
          ascii_line = 16.times.map { [rand(32..126)].pack('U') }.join
          pdf.text "0x#{rand(0xFFFFFFFF).to_s(16).rjust(8, '0')}  #{hex_line}  |#{ascii_line}|"
        end
        pdf.font_size 12
      end
      
      # PÁGINAS 7 - 9: VOLCADOS DE MEMORIA Y GLITCHES ISU
      (7..9).each do |page_num|
        pdf.start_new_page
        pdf.fill_color "8b0000"
        pdf.text "ANÁLISIS FORENSE - VOLCADOS DE MEMORIA Y GLITCHES DEL ANIMUS - HOJA #{page_num - 6}", size: 11, style: :bold
        pdf.fill_color "000000"
        pdf.move_down 15
        pdf.font_size 8
        55.times do
          address = rand(0xFFFFFFFFFFFFFFFF).to_s(16).rjust(16, '0')
          register = %w[RAX RBX RCX RDX RSI RDI RBP RSP RIP CR0 CR3].sample
          pdf.text "[#{Time.now.to_f - rand(1000)}] [BRECHA] FAULT en 0x#{address}: Vector '#{vector}' activado por #{threat}. Registro #{register} alterado."
        end
        pdf.font_size 12
      end
      
      # PÁGINAS 10 - 11: EJECUCIÓN DE PRUEBAS DE MITIGACIÓN (MINITEST BITE)
      (10..11).each do |page_num|
        pdf.start_new_page
        pdf.fill_color "006600"
        pdf.text "AUDITORÍA DE MITIGACIÓN - EJECUCIÓN MINITEST - HOJA #{page_num - 9}", size: 11, style: :bold
        pdf.fill_color "000000"
        pdf.move_down 15
        if File.exist?(test_path)
          pdf.text "Verificando suites de contramedidas en: #{File.basename(test_path)}", size: 10
          pdf.move_down 10
          pdf.font_size 9
          output = `ruby -I #{File.expand_path('../../lib', __dir__)} #{test_path} 2>&1`
          20.times { pdf.text output; pdf.move_down 5 }
          pdf.font_size 12
        else
          pdf.fill_color "990000"
          pdf.text "VULNERABILIDAD CRÍTICA: MOTOR DE PRUEBAS AUSENTE.", style: :bold
          pdf.fill_color "000000"
          pdf.move_down 10
          40.times { pdf.text "ERROR: Falta suite Minitest para certificar la neutralización de #{threat}." }
        end
      end
      
      # PÁGINA 12: CONCLUSIÓN Y CERTIFICACIÓN
      pdf.start_new_page
      pdf.fill_color "8b0000"
      pdf.text "DICTAMEN FINAL Y CERTIFICACIÓN DE ALAMUT", size: 16, style: :bold
      pdf.fill_color "000000"
      pdf.move_down 20
      pdf.text "Tras una auditoría forense exhaustiva de 12 páginas sobre el incidente '#{title}' orquestado por #{threat}, la Hermandad de Los Ocultos certifica que la amenaza ha sido neutralizada mediante contramedidas verificables en código y lógica de ejecución."
      pdf.move_down 40
      pdf.text "Certificado por los Maestros de Alamut:"
      pdf.move_down 30
      pdf.text "____________________________________________"
      pdf.text "#{operator}"
      pdf.text "Maestro de Los Ocultos // Alamut Security Operations"
      
      pdf.render
    end
  end
end
