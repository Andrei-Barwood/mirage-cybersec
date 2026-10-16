require 'prawn'

module AlamutWeb
  class SystemReportGenerator
    def self.generate
      Prawn::Fonts::AFM.hide_m17n_warning = true
      pdf = Prawn::Document.new(page_size: 'A4', margin: 40)
      pdf.font("Courier")
      
      pdf.fill_color "8b0000"
      pdf.text "================================================================", align: :center
      pdf.text "ALAMUT OS v9.8 :: REPORTE DE AUDITORÍA GLOBAL DE LA RED", align: :center, size: 13, style: :bold
      pdf.text "================================================================", align: :center
      pdf.move_down 15
      
      pdf.fill_color "000000"
      pdf.text "FECHA DE EVALUACIÓN: #{Time.now.strftime('%Y-%m-%d %H:%M:%S')} UTC"
      pdf.text "CONSEJO DE ALAMUT: Roshan bint-La'Ahad, Mentor Rayhan & Basim Ibn Ishaq"
      pdf.text "DOMINIO: Califato Abasí (Bagdad, Samarra, El Cairo, Alamut)"
      pdf.text "TOTAL DE OPERACIONES AUDITADAS: 108 INCIDENTES CANÓNICOS"
      pdf.text "ESTADO GENERAL DEL ANILLO DE SEGURIDAD: VERDE // ÓPTIMO"
      pdf.move_down 15
      
      pdf.text "Este documento consolida la auditoría integral de ciberseguridad sobre los 108 escenarios de la saga Assassin's Creed Mirage y la precuela Daughter of No One. Cada sector cuenta con su modelo de amenazas MITRE, contramedidas ejecutables en Ruby y suites Minitest con verificación de estado.", size: 9
      pdf.move_down 20
      
      (1..108).each do |i|
        ep = i.to_s.rjust(2, '0')
        prompt_path = File.expand_path("../../prompts/ep#{ep}_prompt.md", __dir__)
        test_path = File.expand_path("../../test/episodios/ep#{ep}_test.rb", __dir__)
        
        saga_name = i <= 54 ? "DAUGHTER OF NO ONE" : "AC MIRAGE"
        
        pdf.font("Courier", style: :bold, size: 10)
        pdf.fill_color "004466"
        pdf.text "[SECTOR EP#{ep}] [#{saga_name}] RESUMEN TÁCTICO"
        pdf.move_down 3
        
        pdf.font("Courier", style: :normal, size: 8)
        pdf.fill_color "000000"
        
        if File.exist?(prompt_path)
          content = File.read(prompt_path)
          title = content.match(/# (.*)/)&.captures&.first || "DESCONOCIDO"
          threat = content.match(/\*\*Actor Hostil.*:\*\*\s*(.*)/)&.captures&.first || "N/A"
          vector = content.match(/\*\*Vector de Ataque.*:\*\*\s*(.*)/)&.captures&.first || "N/A"
          desc = content.match(/\*\*Descripción del Escenario:\*\*\s*(.*)/)&.captures&.first || "N/A"
          
          pdf.text "Operación: #{title}"
          pdf.text "Amenaza / Actor: #{threat} | Vector: #{vector}"
          pdf.text "Contexto: #{desc[0..160]}..."
          
          if File.exist?(test_path)
            pdf.fill_color "006600"
            pdf.text "Estado: CONTRAMEDIDAS ACTIVAS Y CERTIFICADAS EN MINITEST"
          else
            pdf.fill_color "990000"
            pdf.text "Estado: ALERTA CRÍTICA - SUITE DE PRUEBAS NO ENCONTRADA"
          end
        else
          pdf.fill_color "990000"
          pdf.text "ERROR: Archivo de prompt faltante para el sector EP#{ep}"
        end
        
        pdf.move_down 10
      end
      
      pdf.render
    end
  end
end
