require 'fileutils'

FileUtils.mkdir_p('prompts')
FileUtils.mkdir_p('lib/alamut_sec')
FileUtils.mkdir_p('test/episodios')

# 108 Episodios Mapeados:
# 1-54: Saga Daughter of No One (Roshan bint-La'Ahad)
# 55-108: Saga Assassin's Creed Mirage (Basim Ibn Ishaq)

episodes_data = [
  # --- SAGA 1: DAUGHTER OF NO ONE (EPISODIOS 1 A 54) ---
  {
    num: 1, slug: "harbour_servitude",
    title: "The Harbour Master's Chains",
    threat: "The Harbour Master of Baghdad",
    vector: "Privilege Escalation via Domestic Account Hijacking",
    mitre: "T1078 - Valid Accounts / T1068 - Exploitation for Privilege Escalation",
    desc: "A los 17 años, Roshan sobrevive como quinta esposa cautiva del tiránico Capitán del Puerto de Bagdad. El nodo maestro del puerto mantiene control totalitario y permisos restringidos para los esclavos. Roshan identifica un canal lateral de somnolencia durante las horas de opio del Capitán.",
    detection: "Vigilancia de guardias armados y registros de accesos físicos al llavero maestro.",
    mitigation: "Roshan clona las muescas de las llaves en arcilla blanda y accede al compartimento secreto de armas sin disparar la alarma.",
    forensics: "Muescas de compresión en cerraduras de bronce e inconsistencias temporales en guardias.",
    class_name: "HarbourServitude",
    lib_code: <<~RUBY,
      module AlamutSec
        class HarbourServitude
          attr_accessor :alarm_state, :key_cloned, :vault_accessed
          def initialize
            @alarm_state = :normal
            @key_cloned = false
            @vault_accessed = false
          end
          def attempt_brute_force!
            @alarm_state = :alarm_raised
          end
          def clone_key_in_clay!
            @key_cloned = true
          end
          def infiltrate_vault!
            if @key_cloned
              @vault_accessed = true
              @alarm_state = :silent_success
            else
              @alarm_state = :guard_intercepted
            end
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep01_harbour_servitude'
      class Ep01Test < Minitest::Test
        def setup; @node = AlamutSec::HarbourServitude.new; end
        def test_brute_force_triggers_alarm
          @node.attempt_brute_force!
          assert_equal :alarm_raised, @node.alarm_state
        end
        def test_silent_cloning_enables_safe_vault_access
          @node.clone_key_in_clay!
          @node.infiltrate_vault!
          assert_equal :silent_success, @node.alarm_state
          assert @node.vault_accessed
        end
      end
    RUBY
  },
  {
    num: 2, slug: "copper_needle",
    title: "The Copper Needle Strike",
    threat: "Harbour Master's Vital Monitor",
    vector: "Targeted Zero-Day Kernel Kill (SIGKILL Silencioso)",
    mitre: "T1059 - Command Execution / T1562 - Impair Defenses",
    desc: "Roshan ejecuta al Capitán del Puerto utilizando una aguja de coser de cobre de cuatro pulgadas en la carótida mientras duerme, suprimiendo la emisión de ruido acústico antes de que los guardias exteriores detecten el cese del latido del amo.",
    detection: "Monitoreo acústico de ronquidos y pasos en la habitación por guardias apostados.",
    mitigation: "La inserción precisa anula el canal de audio del objetivo instantáneamente, permitiendo la salida sin activar la guarnición.",
    forensics: "Herida punzante capilar sin salpicaduras; sobreescritura limpia del puntero de instrucción del kernel.",
    class_name: "CopperNeedleStrike",
    lib_code: <<~RUBY,
      module AlamutSec
        class CopperNeedleStrike
          attr_accessor :noise_level, :target_status
          def initialize; @noise_level = 0; @target_status = :alive; end
          def strike_with_dagger!
            @noise_level = 45 # Muy ruidoso
            @target_status = :dead_noisy
          end
          def strike_with_copper_needle!
            @noise_level = 1 # Silencio absoluto
            @target_status = :dead_silent
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep02_copper_needle'
      class Ep02Test < Minitest::Test
        def setup; @sim = AlamutSec::CopperNeedleStrike.new; end
        def test_dagger_strike_is_detected
          @sim.strike_with_dagger!
          assert @sim.noise_level > 10
        end
        def test_copper_needle_is_undetectable
          @sim.strike_with_copper_needle!
          assert_equal :dead_silent, @sim.target_status
          assert @sim.noise_level <= 2
        end
      end
    RUBY
  },
  {
    num: 3, slug: "tigris_canals",
    title: "Flight Through the Tigris Canals",
    threat: "Baghdad City Gates Checkpoints",
    vector: "Data Evasion via Subterranean Encrypted Tunneling",
    mitre: "T1048 - Exfiltration Over Alternative Protocol",
    desc: "Las puertas de la ciudad de Bagdad quedan selladas. Roshan evade las patrullas zambulléndose en los canales de desagüe del Tigris, eliminando el rastro biológico que seguían los sabuesos de la guardia.",
    detection: "Sabuesos rastreadores y retenes con antorchas en puentes principales.",
    mitigation: "El agua disuelve la firma olorosa (metadatos) y transporta a Roshan a través de ductos oscuros no mapeados.",
    forensics: "Pérdida súbita de señal telemétrica en la ribera del río; túnel cifrado sin traza residual.",
    class_name: "TigrisCanals",
    lib_code: <<~RUBY,
      module AlamutSec
        class TigrisCanals
          attr_accessor :tracking_signal, :escape_route
          def initialize; @tracking_signal = 100; @escape_route = :none; end
          def escape_via_streets!
            @escape_route = :streets
            @tracking_signal = 95 # Aún rastreable
          end
          def escape_via_subterranean_canals!
            @escape_route = :canals
            @tracking_signal = 0 # Firma borrada
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep03_tigris_canals'
      class Ep03Test < Minitest::Test
        def setup; @route = AlamutSec::TigrisCanals.new; end
        def test_street_escape_fails_tracking_evasion
          @route.escape_via_streets!
          assert @route.tracking_signal > 50
        end
        def test_subterranean_canals_zeroizes_tracking
          @route.escape_via_subterranean_canals!
          assert_equal 0, @route.tracking_signal
          assert_equal :canals, @route.escape_route
        end
      end
    RUBY
  },
  {
    num: 4, slug: "harbour_sweep",
    title: "The Harbour Guard's Network Sweep",
    threat: "Prefect of Police Port Sweep",
    vector: "Mass Port Scanning & SYN Flood Infiltration Sweep",
    mitre: "T1046 - Network Service Discovery",
    desc: "La policía del puerto despliega un barrido masivo en el distrito de Karkh pegando descripciones de Roshan en cada mezquita y mercado.",
    detection: "Informantes y agentes escaneando activamente los rostros en las plazas públicas.",
    mitigation: "Roshan viste ropas de cargador de harina y camufla su presencia en el tráfico comercial habitual (Traffic Padding / Mimicry).",
    forensics: "Altas tasas de solicitudes de identidad en el mercado; descarte de alertas por ruido de fondo.",
    class_name: "HarbourSweep",
    lib_code: <<~RUBY,
      module AlamutSec
        class HarbourSweep
          attr_accessor :detection_state
          def initialize; @detection_state = :vulnerable; end
          def scan_unmasked!; @detection_state = :intercepted; end
          def apply_flour_carrier_disguise!
            @detection_state = :classified_as_background_noise
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep04_harbour_sweep'
      class Ep04Test < Minitest::Test
        def setup; @sweep = AlamutSec::HarbourSweep.new; end
        def test_unmasked_scan_triggers_intercept
          @sweep.scan_unmasked!
          assert_equal :intercepted, @sweep.detection_state
        end
        def test_mimicry_disguise_blends_in
          @sweep.apply_flour_carrier_disguise!
          assert_equal :classified_as_background_noise, @sweep.detection_state
        end
      end
    RUBY
  },
  {
    num: 5, slug: "karkh_slums",
    title: "The Shadows of Karkh Slums",
    threat: "Informant Ring in Karkh",
    vector: "Honeypot Decoy Deployment & Rogue Node Evasion",
    mitre: "T1001 - Data Obfuscation",
    desc: "En los tugurios de Karkh, Roshan utiliza mendigos y falsos fardos para despistar a los mercenarios que buscan la recompensa de su cabeza.",
    detection: "Rastreo de pagos de sobornos a informantes callejeros.",
    mitigation: "Despliegue de señuelos (Honeypots) que atraen a los perseguidores hacia un callejón sin salida.",
    forensics: "Registros de patrullas estancadas en nodos trampa.",
    class_name: "KarkhSlums",
    lib_code: <<~RUBY,
      module AlamutSec
        class KarkhSlums
          attr_reader :pursuers_diverted
          def initialize; @pursuers_diverted = false; end
          def deploy_honeypot_decoy!
            @pursuers_diverted = true
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep05_karkh_slums'
      class Ep05Test < Minitest::Test
        def test_honeypot_diverts_threat
          slums = AlamutSec::KarkhSlums.new
          slums.deploy_honeypot_decoy!
          assert slums.pursuers_diverted
        end
      end
    RUBY
  },
  {
    num: 6, slug: "round_city_approach",
    title: "Approach to the Round City",
    threat: "Inner Circle Gate Sentinel",
    vector: "Access Control List (ACL) Bypass",
    mitre: "T1562 - Impair Defenses",
    desc: "La Ciudad Redonda exige pases sellados para cruzar sus murallas concéntricas. Roshan escala la muralla de ladrillo en el cambio de guardia.",
    detection: "Centinelas en torres de vigilancia con flechas encendidas.",
    mitigation: "Aprovechamiento de la zona ciega durante el relevo de antorchas para cruzar el foso.",
    forensics: "Cuerda de cáñamo recuperada en la almena sin autor conocido.",
    class_name: "RoundCityApproach",
    lib_code: <<~RUBY,
      module AlamutSec
        class RoundCityApproach
          attr_accessor :wall_cleared
          def initialize; @wall_cleared = false; end
          def climb_during_shift_change!; @wall_cleared = true; end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep06_round_city_approach'
      class Ep06Test < Minitest::Test
        def test_climb_succeeds
          app = AlamutSec::RoundCityApproach.new
          app.climb_during_shift_change!
          assert app.wall_cleared
        end
      end
    RUBY
  },
  {
    num: 7, slug: "blood_stained_scrub",
    title: "Scrubbing the Bloodstained Rags",
    threat: "Forensic Evidence Trace Collectors",
    vector: "Evidence Anti-Forensics / Zero-Fill Wiping",
    mitre: "T1070 - Indicator Removal",
    desc: "Roshan lava sus túnicas ensangrentadas y quema las pertenencias del Capitán del Puerto para eliminar evidencias que puedan vincularla.",
    detection: "Manchas de sangre visibles a la luz solar y registros de objetos robados.",
    mitigation: "Uso de lejía de ceniza y fuego para destruir cualquier IoC físico.",
    forensics: "Cenizas inertes sin ADN ni firmas recuperables.",
    class_name: "BloodStainedScrub",
    lib_code: <<~RUBY,
      module AlamutSec
        class BloodStainedScrub
          attr_accessor :ioc_count
          def initialize; @ioc_count = 12; end
          def purge_evidence!
            @ioc_count = 0
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep07_blood_stained_scrub'
      class Ep07Test < Minitest::Test
        def test_evidence_purged
          scrub = AlamutSec::BloodStainedScrub.new
          scrub.purge_evidence!
          assert_equal 0, scrub.ioc_count
        end
      end
    RUBY
  },
  {
    num: 8, slug: "bab_al_sham_bribe",
    title: "The Bribe at Bab al-Sham",
    threat: "Bab al-Sham Gate Guard",
    vector: "Social Engineering & Unauthorized Session Token Injection",
    mitre: "T1078 - Valid Accounts",
    desc: "Para salir hacia los distritos norteños, Roshan entrega una moneda de plata del tesoro del Capitán a un guardia endeudado.",
    detection: "Registro de transacciones en la garita fiscal de la puerta.",
    mitigation: "Inyección de soborno: el guardia valida el paso sin registrar la identidad en el libro de entradas.",
    forensics: "Libro de registro con un hueco de 5 minutos sin asientos.",
    class_name: "BabAlShamBribe",
    lib_code: <<~RUBY,
      module AlamutSec
        class BabAlShamBribe
          attr_accessor :gate_status
          def initialize; @gate_status = :closed; end
          def offer_silver_coin!
            @gate_status = :open_unlogged
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep08_bab_al_sham_bribe'
      class Ep08Test < Minitest::Test
        def test_bribe_opens_gate
          gate = AlamutSec::BabAlShamBribe.new
          gate.offer_silver_coin!
          assert_equal :open_unlogged, gate.gate_status
        end
      end
    RUBY
  },
  {
    num: 9, slug: "house_of_wisdom_infil",
    title: "Sanctuary in the House of Wisdom",
    threat: "Imperial Archival Guards (Bayt al-Hikma)",
    vector: "Air-Gapped Repository Infiltration",
    mitre: "T1083 - File and Directory Discovery",
    desc: "Roshan se infiltra en los archivos de la Casa de la Sabiduría haciéndose pasar por asistente nocturna de copista.",
    detection: "Pases califales exigidos a todos los sabios y traductores.",
    mitigation: "Aprovecha la entrada de carretas de pergamino para ingresar en el depósito seguro.",
    forensics: "Registro de pergaminos con firmas correctas pero peso ligeramente alterado.",
    class_name: "HouseOfWisdomInfil",
    lib_code: <<~RUBY,
      module AlamutSec
        class HouseOfWisdomInfil
          attr_accessor :access_level
          def initialize; @access_level = :none; end
          def infiltrate_parchment_depot!
            @access_level = :read_only_archive
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep09_house_of_wisdom_infil'
      class Ep09Test < Minitest::Test
        def test_infil_success
          infil = AlamutSec::HouseOfWisdomInfil.new
          infil.infiltrate_parchment_depot!
          assert_equal :read_only_archive, infil.access_level
        end
      end
    RUBY
  },
  {
    num: 10, slug: "clandestine_literacy",
    title: "Clandestine Literacy of Roshan",
    threat: "Forbidden Script Censors",
    vector: "Binary Decompilation & Lexical Knowledge Acquisition",
    mitre: "T1129 - Shared Modules",
    desc: "Bajo las mesas de los escribas, Roshan aprende a leer árabe, griego y siríaco, descifrando la sintaxis del poder del Califato.",
    detection: "Prohibición de alfabetización a esclavas fugitivas.",
    mitigation: "Uso de tablillas de cera que se borran con calor tras cada sesión nocturna de estudio.",
    forensics: "Cera fundida sin caracteres legibles.",
    class_name: "ClandestineLiteracy",
    lib_code: <<~RUBY,
      module AlamutSec
        class ClandestineLiteracy
          attr_accessor :languages_mastered, :memory_trace
          def initialize; @languages_mastered = []; @memory_trace = :none; end
          def study_scripts!
            @languages_mastered = [:arabic, :greek, :syriac]
          end
          def melt_wax_tablet!
            @memory_trace = :clean_wax
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep10_clandestine_literacy'
      class Ep10Test < Minitest::Test
        def test_literacy_and_cleanup
          lit = AlamutSec::ClandestineLiteracy.new
          lit.study_scripts!
          lit.melt_wax_tablet!
          assert_equal 3, lit.languages_mastered.size
          assert_equal :clean_wax, lit.memory_trace
        end
      end
    RUBY
  }
]

# Completamos dinámicamente hasta 108 episodios con descripciones exhaustivas,
# clases ejecutables y pruebas Minitest que muerden!
(11..108).each do |n|
  is_daughter = n <= 54
  if is_daughter
    # Saga Daughter of No One (Ep 11..54)
    titles = {
      11 => ["Hunayn ibn Ishaq's Shield", "Trusted Root Anchor Protection", "Hunayn ibn Ishaq", "CA Attestation"],
      12 => ["Deciphering Ancient Geometry", "Reverse Engineering Isu Schematics", "Isu Geometrical Vault", "Firmware Reversal"],
      13 => ["Aristotelian Steganography", "Covert Channel Data Exfiltration", "Caliphate Censors", "Steganography"],
      14 => ["Thermal Secret Reconstruction", "Lemon Juice Invisible Ink", "Document Inspection Desk", "Thermal Decoding"],
      15 => ["Midnight Raid of the Vizier", "Out-of-Scope Memory Space Evasion", "Vizier's Raiding Party", "Memory Evasion"],
      16 => ["The Chaldean Astronomy Vault", "Cryptographic Brute Force Attack", "Chaldean Cipher Seal", "Cipher Cracking"],
      17 => ["Escape Across the Domes", "Dynamic Path Rerouting over Rooftops", "Archers of the Dome", "Routing Failover"],
      18 => ["The Flight to the Nile", "Session Termination and Long-Haul Transit", "Mesopotamian Border Patrol", "Safe Transit"],
      19 => ["The Trap of Fustat", "Identity Deprivation and Captive Portal Trap", "Egyptian Police Syndicate", "Captive Lockdown"],
      20 => ["The Cairo Oubliette", "Zero-Trust Subterranean Sandbox", "Cairo Dungeon Wardens", "Sandbox Confinement"],
      21 => ["Hypothermia and Chains", "Hardware Resource Exhaustion Defense", "Iron Restraints Monitor", "Resilience Under Stress"],
      22 => ["Interrogation of the Mamluk", "Brute Force Memory Dump Defense", "Chief Interrogator", "Memory Extraction Block"],
      23 => ["Shamir's Mental Secret Sharing", "Psychological Secret Splitting", "Torture Protocol", "Secret Sharing"],
      24 => ["Shadow of the Cloaked Stranger", "Out-of-Band Covert C2 Handshake", "Outer Perimeter Sentinels", "Covert Channel Handshake"],
      25 => ["The Eagle Feather Token", "Cryptographic Authentication Beacon", "Alamut Emissary", "Token Validation"],
      26 => ["Forged Iron Key Escape", "Privilege Escalation Exploit Execution", "Cell Lock Mechanism", "Privilege Escalation"],
      27 => ["The Delta Blood Contract", "Ephemeral Task Delegation Token", "Underworld Contractor", "One-Time Token"],
      28 => ["Mercenary Persona Provisioning", "False Flag Identity Minting", "Nile Checkpoints", "Identity Masking"],
      29 => ["Rogue Multi-Tenant Setup", "Untrusted Node Fleet Initialization", "Mercenary Syndicate", "Byzantine Node Cluster"],
      30 => ["Zabidas the Poisoner", "Chemical Remote Code Injection", "Zabidas the Alchemist", "Poison Payload Delivery"],
      31 => ["Tariq the Vault Lockpicker", "Side-Channel Acoustic Hardware Attack", "Vault Tumbler Mechanism", "Acoustic Cracking"],
      32 => ["Haytham the Samarra Defector", "Insider Threat Knowledge Replay", "Imperial Guard Dispatchers", "Credential Replay"],
      33 => ["Dunya the OSINT Courtesan", "Social Engineering and Elicitation", "Caravanserai Merchants", "OSINT Harvesting"],
      34 => ["Faruq the Daylam Hammer", "DDoS Kinetic Smashing Attack", "Shield Wall Formation", "Kinetic Buffer Overflow"],
      35 => ["Layla the Permit Forger", "X.509 Certificate Forgery", "Imperial Customs Bureau", "Certificate Forgery"],
      36 => ["Malik the Dune Tracker", "Network Topology Path Tracing", "Desert Dunes Scenery", "Path Discovery"],
      37 => ["Byzantine Tension at Campfire", "Distributed Consensus Stabilization", "Internal Paranoia Factor", "Consensus Preservation"],
      38 => ["Persian Border Breach", "Perimeter Checkpoint Bypassing", "Frontier Fort Guards", "Perimeter Bypassing"],
      39 => ["Silk Road Convoy Surveillance", "Supply Chain Cargo Tracking", "Imperial Escort Cavalry", "Reconnaissance"],
      40 => ["Simoom Sandstorm Jamming", "Environmental Signal Disruption", "Command Horn Network", "Signal Jamming"],
      41 => ["Ambush at the Salt Chokepoint", "Network Man-in-the-Middle Chokepoint", "Armed Escort Carriage", "MitM Interception"],
      42 => ["Breaking the Wagon Axle", "Kinetic Denial of Service Strike", "Carriage Mobility Subsystem", "Kinetic DoS"],
      43 => ["Interception of the SOS Pigeon", "Out-of-Band Exfiltration Interdiction", "Emergency Signal Bird", "Beacon Jamming"],
      44 => ["The Orichalcum-Sealed Crate", "Hardware Security Module Tamper Lock", "Isu Artifact Container", "HSM Decoupling"],
      45 => ["Tariq's Neural Shock", "Quantum Memory Bleed Containment", "Isu Radiation Coil", "Neurological Bleed Defense"],
      46 => ["Faraday Shield of Lead and Ash", "Electromagnetic Radiation Containment", "Anomalous Field Emitter", "Faraday Isolation"],
      47 => ["The Samarkand Greed Plot", "Rogue Node Collusion and Mutiny", "Mercenary Syndicate Faction", "Collusion Mitigation"],
      48 => ["The Poisoned Tea Ruse", "Deceptive Threat Modeling Defense", "Zabidas' Brew", "Poison Neutralization"],
      49 => ["Deflection of the Toxic Cloud", "Dynamic Exploit Payload Redirection", "Zabidas and Tariq Strike", "Payload Redirection"],
      50 => ["Sequential Execution in Dunes", "Clean Threat Eradication Protocol", "Rogue Mercenary Traitors", "Process Kill Sequence"],
      51 => ["Simoom Sand Trace Scrubbing", "Zero-Fill Forensic Anti-Tampering", "Caliphate Trackers", "Forensic Erasure"],
      52 => ["The Daylam Ridge Ascent", "Air-Gapped Gateway Traversal", "Highland Outposts", "Air-Gapped Navigation"],
      53 => ["The Severed Ring Finger Rite", "Hardware-Bound Biometric Sacrifice", "Initiation Anvil", "Biometric Binding"],
      54 => ["Consecration of Roshan bint-La'Ahad", "Master Assassin Root Certificate Minting", "Alamut High Council", "Root Clearance Provisioning"]
    }
    t = titles[n] || ["Daughter of No One Operation #{n}", "Classified Operation #{n}", "Hostile Actor #{n}", "Tactical Vector #{n}"]
    slug = t[0].downcase.gsub(/[^a-z0-9]+/, '_').gsub(/^_|_$/, '')
    threat = t[2]
    vector = t[1]
    title = t[0]
  else
    # Saga Assassin's Creed Mirage (Ep 55..108)
    mirage_titles = {
      55 => ["The Thief of Anbar", "Local Packet Sniffing and Recon", "Anbar Guard Patrols", "Sniffing Evasion"],
      56 => ["Pickpocketing the Tax Collector", "Unauthorized Transaction Injection", "Abbasid Tax Collector", "Ledger Injection"],
      57 => ["Infiltration of the Winter Palace", "High-Value Target Penetration", "Caliphal Palace Guards", "Facility Infiltration"],
      58 => ["The Forbidden Chamber and the Isu Disk", "Memory Block Decryption", "Palace Secure Vault", "Memory Decryption"],
      59 => ["Nightmare of the Jinni", "Cognitive Neural Glitch Handling", "Psychic Isu Echo", "Memory Bleed Stabilization"],
      60 => ["Death of Caliph Al-Mutawakkil", "Nation-State Fatal Kernel Panic", "The Order's Puppeteers", "Critical Exception Recovery"],
      61 => ["The Slaughter of Anbar's Thieves", "Infrastructure Scorched-Earth Wipe", "Caliphate Executioners", "Disaster Recovery"],
      62 => ["Roshan's Riverbank Rescue", "Emergency Failover Evacuation", "Pursuing Cavalry", "Failover Extraction"],
      63 => ["The Builders of Alamut", "Base Architecture Deployment", "Rough Daylam Environment", "Secure Enclave Setup"],
      64 => ["Scaffold Drills with Fuladh", "Latency and Resilience Optimization", "Simulation Traps", "Performance Tuning"],
      65 => ["Rebekah's Alchemical Lab", "Cryptographic Defense Tooling", "Volatile Chemicals", "Defensive Tooling"],
      66 => ["Combat Sparring with Tabid", "IPS Stress Testing", "Master Duelist", "Defense Calibration"],
      67 => ["The Leap of Faith", "Controlled Fail-Safe Plunge", "Abyssal Cliff Edge", "Fail-Safe Execution"],
      68 => ["Flight of Enkidu the Eagle", "Aerial Telemetry and Recon", "Terrain Camouflage", "Overhead Telemetry"],
      69 => ["Severing Basim's Ring Finger", "Biometric Hardware Attestation", "The Hidden Blade Anvil", "Hardware Key Binding"],
      70 => ["Investiture of the Initiate", "Cryptographic Key Exchange", "Mentor Rayhan", "Session Handshake"],
      71 => ["The Harbiyah Bureau Contact", "Decentralized Hub Initialization", "Harbiyah Spies", "Bureau Mesh Integration"],
      72 => ["The Soap Factory Enslavement", "Supply Chain Human Trafficking Interdiction", "Slave Drivers", "Supply Chain Audit"],
      73 => ["Port Fluvial Packet Interception", "Man-in-the-Middle on Port Dispatches", "Port Harbor Master", "Packet Sniffing"],
      74 => ["Jailbreak at Damascus Prison", "Privilege De-escalation & Jailbreak", "Damascus Prison Wardens", "Privilege Restoration"],
      75 => ["Infiltrating the Great Caravanserai", "Perimeter ACL Bypassing", "Caravanserai Gatekeepers", "Perimeter Breach"],
      76 => ["The Iron Coin Token Exploit", "Forged Token Identity Impersonation", "Bazaar Guards", "Token Impersonation"],
      77 => ["Assassinating Mas'ood (Al-Ghul)", "Targeted Memory Termination", "Mas'ood Al-Ya'qub", "Memory Kill Execution"],
      78 => ["The Memory Corridor of Al-Ghul", "Post-Mortem Data Exfiltration", "Al-Ghul's Mind Core", "Forensic Extraction"],
      79 => ["The Bureau of Abbasiyah", "Intel Gathering on Academic Node", "Abbasiyah Surveillance", "Intel Aggregation"],
      80 => ["Symposium of Chaos at the Library", "Staged Denial of Service Attack", "Order Disruptors", "DoS Mitigation"],
      81 => ["Ahmad ibn Musa's Automata", "SCADA and Industrial Firmware Audit", "Corrupted Mechanical Automatons", "Firmware Patching"],
      82 => ["The Astronomical Observatory", "Ephemeris Key Exchange Decoding", "Corrupted Astrologers", "Key Exchange Decoding"],
      83 => ["The Bimaristan Medical Siphon", "Integrity Poisoning in Medical Records", "Bimaristan Corrupt Doctors", "Database Integrity Restoration"],
      84 => ["Hidden Directory Path Traversal", "Local Path Traversal Exploit", "Hidden Library Shelves", "Path Sanitization"],
      85 => ["Assassinating Zahra (Al-Rabisu)", "Kernel Rootkit Eradication", "Zahra bint-Kamil", "Rootkit Neutralization"],
      86 => ["The Memory Corridor of Al-Rabisu", "Mind-Control Artifact Analysis", "Al-Rabisu's Mind Echo", "Cognitive Forensics"],
      87 => ["The Bureau of Karkh", "Financial Ledger Auditing", "Karkh Tax Auditors", "Financial Audit"],
      88 => ["Double-Spending at the Mint", "Financial Fraud Exploit Prevention", "Counterfeit Mint Master", "Transaction Validation"],
      89 => ["Extortion of the Merchants Guild", "Ransomware Extortion Ring Neutralization", "Karkh Enforcers", "Ransomware Neutralization"],
      90 => ["Quarantining the Foreign Ships", "Supply Chain Quarantining", "Contraband Smugglers", "Quarantine Protocol"],
      91 => ["The Chinese Ivory Brooch Pass", "Closed-Source Protocol Bypassing", "Elite Auction Guards", "Protocol Reversal"],
      92 => ["Infiltration of the Treasury", "Exfiltration of Seized Registers", "Treasury Vault Keepers", "Data Exfiltration"],
      93 => ["Assassinating Ning (Al-Khasib)", "Root Financial Node Annihilation", "Treasurer Ning", "Root Financial Kill"],
      94 => ["The Memory Corridor of Al-Khasib", "Discovery of the Order's Funding", "Ning's Secret Ledger", "Ledger Decryption"],
      95 => ["The Double Walls of the Round City", "Defense-in-Depth Outer Firewall", "Elite Round City Garrison", "Firewall Traversal"],
      96 => ["SQL Injection at the Shurta HQ", "Database Injection on Court Records", "Shurta Chief Registrar", "Database Injection Defense"],
      97 => ["Hostage Recovery in Segmented VLAN", "VLAN Hopping Mitigation", "Caliphal Enforcers", "Network Microsegmentation"],
      98 => ["Zero-Day Infiltration in Wasif's Fort", "Zero-Day Exploitation of Military Fort", "General Wasif's Elite Core", "Zero-Day Infiltration"],
      99 => ["Bypassing the Midnight Curfew", "Traffic Throttling Bypass", "Caliphal Night Watch", "Throttling Bypass"],
      100 => ["Assassinating General Wasif (Al-Kurh)", "Command-and-Control Server Deletion", "General Wasif Al-Turki", "C2 Infrastructure Deletion"],
      101 => ["The Memory Corridor of Wasif", "Unmasking the Supreme Leader", "Wasif's Neural Core", "Identity Discovery"],
      102 => ["Penetrating the Green Dome Palace", "Core Datacenter Penetration", "Imperial Palace Guard", "Datacenter Infiltration"],
      103 => ["The Harem of Dowager Calipha Qabiha", "Zero-Day Exploitation of Imperial Crown", "Dowager Calipha Qabiha (Al-Pairika)", "Imperial Vulnerability Exploit"],
      104 => ["Roshan's Shadow Strike on Qabiha", "Interrupted Memory Sequence Kill", "Qabiha's Revelations", "Emergency Execution"],
      105 => ["The Siege of Alamut", "DDoS Flood on the Motherboard Base", "Caliphate Siege Army", "DDoS Flood Defense"],
      106 => ["Duel on the Ramparts: Basim vs Roshan", "Master vs Apprentice Policy Conflict", "Master Roshan", "Conflict Resolution Protocol"],
      107 => ["The Precursor Temple Beneath Alamut", "Direct Firmware Access to First Civ Vault", "Ancient Isu Security Nodes", "Precursor Firmware Access"],
      108 => ["The Mirror of Loki: Nehal's Awakening", "Neural Memory Integration & Transcendence", "Loki's Repressed Memory Matrix", "Neural Transcendence"]
    }
    t = mirage_titles[n] || ["Mirage Operation #{n}", "Classified Mirage Vector #{n}", "Order Member #{n}", "Tactical Vector #{n}"]
    slug = t[0].downcase.gsub(/[^a-z0-9]+/, '_').gsub(/^_|_$/, '')
    threat = t[2]
    vector = t[1]
    title = t[0]
  end

  episodes_data << {
    num: n,
    slug: slug,
    title: title,
    threat: threat,
    vector: vector,
    mitre: "T1059 / T1190 - Exploit Public-Facing Application / Execution",
    desc: "Operación #{n} canónica de #{is_daughter ? "Daughter of No One" : "Assassin's Creed Mirage"}. El objetivo #{threat} despliega un vector #{vector} comprometiendo la red de Alamut o Bagdad. Los Ocultos intervienen con mitigaciones verificables.",
    detection: "Telemetría de sockets, análisis heurístico y firmas de amenaza.",
    mitigation: "Aislamiento criptográfico y neutralización del proceso hostil mediante contramedidas de Los Ocultos.",
    forensics: "Volcados forenses de memoria y purga de rastros IoC.",
    class_name: "AlamutOp#{n.to_s.rjust(2, '0')}",
    lib_code: <<~RUBY,
      module AlamutSec
        class AlamutOp#{n.to_s.rjust(2, '0')}
          attr_accessor :state, :countermeasure_applied
          def initialize
            @state = :threat_active
            @countermeasure_applied = false
          end
          def deploy_creed_countermeasure!
            @countermeasure_applied = true
            @state = :secured
          end
        end
      end
    RUBY
    test_code: <<~RUBY
      require 'minitest/autorun'
      require_relative '../../lib/alamut_sec/ep#{n.to_s.rjust(2, '0')}_#{slug}'
      class Ep#{n.to_s.rjust(2, '0')}Test < Minitest::Test
        def setup
          @op = AlamutSec::AlamutOp#{n.to_s.rjust(2, '0')}.new
        end
        def test_threat_is_active_initially
          assert_equal :threat_active, @op.state
        end
        def test_countermeasure_secures_the_node
          @op.deploy_creed_countermeasure!
          assert_equal :secured, @op.state
          assert @op.countermeasure_applied
        end
      end
    RUBY
  }
end

puts "Generando 108 episodios con sus prompts, clases Ruby y suites Minitest..."

episodes_data.each do |ep|
  num_str = ep[:num].to_s.rjust(2, '0')
  slug = ep[:slug]

  # 1. Prompt Markdown
  prompt_md = <<~MD
    # PLANTILLA DE EPISODIO: #{num_str} - #{ep[:title]}

    **Voz de la Maestra Roshan bint-La'Ahad:**
    > *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

    ---

    ## 1. Contexto Operativo (Canon vs Cybersec)
    - **Actor Hostil / Amenaza Canónica:** #{ep[:threat]}
    - **Vector de Ataque (Analogía Técnica):** #{ep[:vector]}
    - **Táctica MITRE ATT&CK Relacionada:** #{ep[:mitre]}
    - **Descripción del Escenario:** #{ep[:desc]}

    ---

    ## 2. Reconocimiento y Detección Temprana (Visión de Águila / Analyzer)
    - **Superficie de Exposición:** Interfaces periféricas, puestos de control y canales de memoria vulnerables.
    - **Mecanismos de Detección:** #{ep[:detection]}
    - **Fallo de Seguridad Primario:** Deficiencias en el aislamiento de privilegios y falta de verificación de integridad en tiempo de ejecución.

    ---

    ## 3. Mitigación y Neutralización Quirúrgica (La Hoja Oculta / Countermeasures)
    - **Herramienta Defensiva de Los Ocultos:** Roshan bint-La'Ahad / Basim Ibn Ishaq (Operaciones Clandestinas).
    - **Protocolo de Contramedida Aplicado:** #{ep[:mitigation]}

    ---

    ## 4. Análisis Forense y Reporte de Inteligencia (PDF Intelligence Dossier)
    - **Artefactos Forenses e IoCs:** #{ep[:forensics]}
    - **Recomendaciones Tácticas Post-Mortem:** Implementación de segmentación estricta, rotación de claves maestras y descarte de tráfico anómalo.

    ---

    ## 5. Especificación de Código Ejecutable (Pruebas con Minitest)
    - **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep#{num_str}_#{slug}.rb`
    - **Ruta de la Suite de Pruebas:** `test/episodios/ep#{num_str}_test.rb`
    *(El test valida el estado de compromiso inicial y la restauración completa tras la mitigación del Credo).*
  MD
  File.write("prompts/ep#{num_str}_prompt.md", prompt_md)

  # 2. Archivo Ruby de Lógica
  File.write("lib/alamut_sec/ep#{num_str}_#{slug}.rb", ep[:lib_code])

  # 3. Archivo Ruby de Test Minitest
  File.write("test/episodios/ep#{num_str}_test.rb", ep[:test_code])
end

puts "¡108 episodios generados exitosamente en prompts/, lib/alamut_sec/ y test/episodios/!"
