# ASSASSIN'S CREED MIRAGE: DAUGHTER OF NO ONE
## DOSSIER MAESTRO DE OPERACIONES Y MATRIZ DE PROMPTS CANÓNICOS (CYBERSEC SWING)

> *"No pertenezco a ningún hombre. No tengo linaje que me ate, ni amo que me reclame. Soy la Hija de Nadie, y mi hoja corta en el silencio de la red."*  
> — Roshan bint-La'Ahad, Registro Histórico del Animus v9.8 / Archivos Secretos de Alamut

---

## 0. INTRODUCCIÓN GENERAL Y DOCTRINA DE ADAPTACIÓN

Este compendio traduce minuciosamente la novela precuela canónica ***Assassin’s Creed Mirage: Daughter of No One*** (escrita por Maria Lewis y publicada en sincronía con el lore de Ubisoft) al ecosistema de **Ciberseguridad Ofensiva, Inteligencia de Amenazas (Threat Intelligence) y Respuesta a Incidentes (IR)** del proyecto Alamut OS.

En la tradición de nuestro laboratorio, los hechos históricos y las memorias del Animus se proyectan sobre arquitecturas digitales modernas:
- **Bagdad y El Cairo del siglo IX** representan infraestructuras metropolitanas de telecomunicaciones, servidores centrales de gobernanza y centros de cálculo distribuidos.
- **La Orden de los Antiguos (The Order of the Ancients)** y los señores feudales representan un sindicato de ciberespionaje estatal (APT de nivel 4) que busca el monopolio criptográfico mediante artefactos Isu (tecnología cuántica / zero-days precursores).
- **Los Ocultos (The Hidden Ones)** constituyen un grupo de ciberoperaciones encubiertas (Red Team / Counter-Intelligence Agency) dedicado a la contención de brechas, auditoría de código cerrado y neutralización física y lógica de atacantes.
- **Roshan** encarna la anomalía del sistema: un proceso marginal, indetectable para los firewalls perimetrales, capaz de evolucionar desde un vector de evasión local hasta una suite completa de mitigación criptográfica.

A continuación se despliega la totalidad de los prompts operativos requeridos para ejecutar, auditar y compilar cada uno de los arcos, capítulos y operaciones de *Daughter of No One*, con el máximo nivel de exhaustividad, riqueza técnica y rigor de canon.

---

```
                                      ÍNDICE DE LA MATRIZ
==================================================================================================
ACTO I: LAS CADENAS DEL PUERTO (BAGDAD, 819 d.C. — ETAPA 17 AÑOS)
  ├─ OP-DN-01: El Harén de Servidumbre y el Envenenamiento de Privilegios (Privilege Escalation)
  ├─ OP-DN-02: La Aguja de Cobre en la Yugular (Targeted Zero-Day Kernel Kill)
  ├─ OP-DN-03: Fuga por los Canales del Tigris (Data Evasion / Encrypted Tunneling)
  └─ OP-DN-04: Cacería de la Guardia Portuaria (Persistent Threat Surveillance & Network Sweep)

ACTO II: EL SANTUARIO DEL CONOCIMIENTO (CASA DE LA SABIDURÍA, BAGDAD)
  ├─ OP-DN-05: El Escriba Clandestino y Hunayn ibn Ishaq (Air-Gap Data Infiltration)
  ├─ OP-DN-06: El Robo de la Geometría Antigua (Reverse Engineering Isu Cryptographic Formats)
  ├─ OP-DN-07: Esteganografía en los Manuscritos Aristotélicos (Steganography / Hidden Channels)
  └─ OP-DN-08: La Razzia de los Inspectores del Visir (Audit Evasion & Anti-Forensics)

ACTO III: LA OUBLIETTE DE EL CAIRO (EGIPTO, 824 d.C. — ETAPA 22 AÑOS)
  ├─ OP-DN-09: El Calabozo Subterráneo y la Privación Total de Permisos (Zero Trust Lockdown)
  ├─ OP-DN-10: Interrogatorio y Resistencia a la Extracción Forzada (Memory Dump Hardening)
  ├─ OP-DN-11: La Visita del Encapuchado de Alamut (Out-of-Band Covert C2 Handshake)
  └─ OP-DN-12: El Pacto de la Libertad Condicional (Token Generation & Mission Authorization)

ACTO IV: EL SINDICATO DE LOS OCHO (LA BANDA DE FORAJIDOS EN EL DELTA)
  ├─ OP-DN-13: El Despliegue de los Mercenarios Desechables (Rogue Node Fleet Initialization)
  ├─ OP-DN-14: Zabidas el Envenenador (Chemical / Malware Payload Formulation)
  ├─ OP-DN-15: Tariq el Cerrajero de Bóvedas (Physical & Biometric Access Bypassing)
  ├─ OP-DN-16: Haytham el Desertor de Samarra (Insider Threat / Defense Evasion)
  ├─ OP-DN-17: Dunya la Espía de Caravasares (OSINT / Social Engineering Infiltration)
  ├─ OP-DN-18: Faruq el Ariete de Daylam (DDoS Brute Force & Hardware Decryption)
  ├─ OP-DN-19: Layla la Falsificadora de Salvoconductos (Certificate Forgery & Identity Spoofing)
  └─ OP-DN-20: La Desconfianza Bizantina en el Campamento (Byzantine Fault Tolerance Crisis)

ACTO V: LA INTERCEPTACIÓN EN LA RUTA DE LA SEDA (TRAVESÍA A PERSIA)
  ├─ OP-DN-21: Vigilancia del Convoy Imperial en el Desierto (Hardware Supply Chain Tracking)
  ├─ OP-DN-22: La Tormenta de Arena del Espejismo (Man-in-the-Middle Jamming & Signal Disruption)
  ├─ OP-DN-23: Asalto al Carromato Blindado (Physical Layer Penetration Testing)
  ├─ OP-DN-24: La Bóveda de Madera y Bronce Marcada (Decryption of the Isu Transportation Crate)
  └─ OP-DN-25: La Radiación del Artefacto de la Primera Civilización (Quantum Memory Corruption)

ACTO VI: LA MASACRE EN LAS DUNAS Y LA TRAICIÓN INTERNA
  ├─ OP-DN-26: La Codicia de los Mercenarios (Consensus Poisoning & Lateral Attack)
  ├─ OP-DN-27: El Motín de Zabidas y Tariq (Hostile Takeover of the Master Node)
  ├─ OP-DN-28: Ejecución de la Hoja en la Tormenta (Targeted Threat Eradication)
  ├─ OP-DN-29: Recuperación de la Reliquia y Aislamiento Cuántico (Secure Enclave Encapsulation)
  └─ OP-DN-30: La Purgación de los Rastrores en la Arena (Forensic Trace Sanitization)

ACTO VII: EL ASCENSO A ALAMUT Y EL BAUTISMO DE SOMBRAS
  ├─ OP-DN-31: La Travesía Solitaria por los Riscos de Daylam (Air-Gapped Infiltration to Alamut)
  ├─ OP-DN-32: El Juicio del Mentor Rayhan (Root Certificate Validation & Security Clearance)
  ├─ OP-DN-33: El Rito del Dedo Anular Cercenado (Cryptographic Revocation of Mortal Identity)
  ├─ OP-DN-34: La Consagración de la Hija de Nadie (Master Assassin Root Provisioning)
==================================================================================================
```

---

## ACTO I: LAS CADENAS DEL PUERTO (BAGDAD, 819 d.C. — 17 AÑOS)

### OP-DN-01: El Harén de Servidumbre y el Envenenamiento de Privilegios
- **Voz de Roshan:** *"A los diecisiete años, mi valor en el mercado de Bagdad era menos que un saco de comino. El Capitán del Puerto creyó que había comprado una quinta esposa sumisa. Ignoraba que cuando arrinconas a un animal hambriento, sus garras aprenden a abrir cerraduras imperiales."*
- **Vector de Amenaza:** *Privilege Escalation vía Abuso de Confianza Doméstica (Local Account Hijacking).*
- **Escenario:** El Capitán del Puerto mantiene una red de control absoluto en su residencia fluvial. El entorno simula un clúster privado donde los nodos cautivos (las esposas y sirvientes) poseen privilegios restringidos de solo lectura (`chmod 400`), mientras el nodo maestro opera con permisos `UID 0 (root)` sin registro de auditoría.
- **Detección:** Roshan identifica vectores de fuga en la rutina de guardia: el Capitán delega llaves maestras en un anillo físico durante las horas de consumo de opio, exponiendo una ventana temporal de acceso no autenticado de 180 segundos.
- **Mitigación de Roshan:** Creación de un subproceso de evasión que aprovecha el canal lateral de somnolencia del host. Roshan no ataca frontalmente; cosecha los permisos del llavero maestro clonando las muescas en arcilla blanda (Side-Channel Key Reconstitution).
- **Código y Tests:** `lib/alamut_sec/dn01_harbour_servitude.rb` y `test/episodios/dn01_test.rb`. La suite prueba que una solicitud de evasión sin credenciales cosechadas dispara una alarma de guardia (`:lockdown`), mientras que la clonación de tokens efímeros permite el acceso al compartimento de armas sin levantar logs (`:unnoticed_access`).

### OP-DN-02: La Aguja de Cobre en la Yugular
- **Voz de Roshan:** *"No tenía espada de acero damasquino ni dagas de plata. Tenía una aguja de coser cobre de cuatro pulgadas. Bastó un solo punto de presión en el lado izquierdo de su cuello mientras roncaba. Un suspiro, un espasmo, y el amo del puerto dejó de existir."*
- **Vector de Amenaza:** *Targeted Zero-Day Kernel Kill (Direct Memory Overwrite / SIGKILL Silencioso).*
- **Escenario:** Neutralización quirúrgica del proceso raíz tiránico. En términos computacionales, representa un desbordamiento de búfer que sobreescribe el puntero de instrucción (`$RIP`) directamente en la dirección de la subrutina de apagado de emergencia, sin pasar por los gestores de excepciones ni emitir un Kernel Panic.
- **Detección:** Los guardias exteriores supervisan el latido del nodo principal mediante inspección de ruido sonoro ambiental (Keep-Alive Heartbeat). Cualquier grito o estruendo activa el protocolo de cierre perimetral.
- **Mitigación de Roshan:** Inserción del exploit en el registro de respiración: la aguja de cobre perfora la arteria carótida anulando la emisión de paquetes acústicos. La sesión del Capitán se cierra silenciosamente (`status: :terminated`), manteniendo las banderas de keep-alive en falso positivo durante el tiempo necesario para la extracción.
- **Código y Tests:** `lib/alamut_sec/dn02_copper_needle.rb`. El test verifica que si el payload genera más de 5 decibeles de ruido, la residencia activa el estado `:alarm_raised`; la ejecución precisa de Roshan registra 0 ruido y transición inmediata a `:dead_silence`.

### OP-DN-03: Fuga por los Canales del Tigris
- **Voz de Roshan:** *"El agua del Tigris apesta a limo podrido y desechos de curtidores, pero para una fugitiva con las manos ensangrentadas, ese hedor es el manto de Dios. Si los sabuesos huelen sangre en los adoquines, lánzate a la corriente donde el rastro se diluye para siempre."*
- **Vector de Amenaza:** *Data Evasion & Encrypted Subterranean Tunneling (Tor / Onion Routing Stream).*
- **Escenario:** Las patrullas urbanas de Bagdad despliegan retenes en los puentes principales (inspección de tráfico de borde / Deep Packet Inspection). La salida hacia las puertas de la ciudad está bloqueada.
- **Detección:** Sensores biométricos de patrulla basados en descripciones de testigos oculares y sabuesos que siguen huellas químicas.
- **Mitigación de Roshan:** Encaminamiento subterráneo por los túneles pluviales y canales fluviales. Cada canal actúa como un nodo de retransmisión anónimo que destruye la cabecera del paquete anterior. El agua elimina la firma química del perro rastreador (scrubbing de metadatos forenses).
- **Código y Tests:** `lib/alamut_sec/dn03_tigris_canals.rb`. El test simula un grafo de nodos urbanos con rastreo probabilístico. La ruta de superficie resulta interceptada en el 100% de las iteraciones, mientras que la ruta de canales alcanza una probabilidad de fuga del 99.8% con cero correlación de identidad.

### OP-DN-04: Cacería de la Guardia Portuaria
- **Voz de Roshan:** *"Toda la guarnición del puerto bajó a los zocos. Fijaron mi rostro en pergaminos clavados en cada mezquita y mezcolanza de mercaderes. Cuando un tirano muere, su maquinaria busca venganza no por justicia, sino para ocultar su propia incompetencia."*
- **Vector de Amenaza:** *Persistent Threat Surveillance & Wide-Area Network Sweep (Mass Scanning / Shodan Sweep).*
- **Escenario:** El prefecto de policía de Bagdad lanza un barrido masivo de puertos (escaneo SYN coordinado) en todos los distritos comerciales de Karkh en busca del proceso rebelde con la firma SHA256 de Roshan.
- **Detección:** Los pregones públicos y recompensas monetarias estimulan a informantes civiles a enviar paquetes de telemetría a la central de policía.
- **Mitigación de Roshan:** Adopción de camuflaje de tráfico: Roshan se disfraza con telas de cargador de sacos de harina, mezclando sus transacciones diarias con el ruido de fondo comercial del mercado de especias (Traffic Padding / Mimicry Attack).
- **Código y Tests:** `lib/alamut_sec/dn04_harbour_sweep.rb`. La prueba evalúa la resistencia del nodo ante barridos de escaneo de alta intensidad. Al aplicar `RoshanMimicry.blend_in_noise!`, el escáner del prefecto clasifica el tráfico como `:background_commercial_noise` y no detona alertas.

---

## ACTO II: EL SANTUARIO DEL CONOCIMIENTO (CASA DE LA SABIDURÍA, BAGDAD)

### OP-DN-05: El Escriba Clandestino y Hunayn ibn Ishaq
- **Voz de Roshan:** *"En la Casa de la Sabiduría descubrí que las palabras son dagas forjadas en tinta. Me oculté bajo las mesas de los traductores nestorianos y aprendí a leer el griego y el siríaco antes de que supieran que una mujer respiraba bajo sus códices."*
- **Vector de Amenaza:** *Air-Gapped Data Repository Infiltration & Clandestine Read-Only Exploitation.*
- **Escenario:** La Casa de la Sabiduría (Bayt al-Hikma) funciona como un repositorio de datos de máxima seguridad completamente aislado de la red pública (Air-Gapped Library). Solo los eruditos de la corte imperial del Califa Al-Ma'mun poseen credenciales biométricas y permisos de lectura.
- **Detección:** Los guardianes de códices registran el peso de los manuscritos y la presencia física mediante conteo estricto de candiles y pergaminos.
- **Mitigación de Roshan:** Roshan no roba los manuscritos físicos; trabaja durante el ciclo de mantenimiento nocturno memorizando estructuras léxicas y transcribiendo fragmentos en tabletas de cera reutilizables (RAM-only volatile storage que se borra al aplicar calor).
- **Código y Tests:** `lib/alamut_sec/dn05_house_of_wisdom.rb`. El test verifica que la bóveda mantenga el hash de integridad de los libros físicos mientras que el buffer de aprendizaje de Roshan incrementa su capacidad cognitiva sin dejar registros persistentes en disco.

### OP-DN-06: El Robo de la Geometría Antigua
- **Voz de Roshan:** *"No todos los textos hablaban de medicina o poesía persa. Había diagramas con ángulos que mareaban la vista, esquemas de máquinas que medían las estrellas y cajas doradas talladas antes del Gran Diluvio. La Primera Civilización había dejado su arquitectura inscrita en el papiro."*
- **Vector de Amenaza:** *Reverse Engineering of Proprietary Legacy Formats (Isu Artifact Schematics).*
- **Escenario:** Extracción y decodificación de planos antiguos relacionados con tecnología precursora Isu almacenados en rollos herméticos sellados con lacre del Califato.
- **Detección:** Firmas criptográficas de lacre: cualquier ruptura de sello es visible a la inspección matutina de los bibliotecarios.
- **Mitigación de Roshan:** Análisis no invasivo mediante calentamiento con vapor para ablandar el sello sin romper la estampa (Side-Channel Physical Extraction), seguido del copiado manual de esquemas geométricos Isu.
- **Código y Tests:** `lib/alamut_sec/dn06_ancient_geometry.rb`. La suite valida la preservación del estado `:seal_intact` mientras el vector de conocimiento Isu (`:isu_schematics_dump`) es clonado con precisión del 100%.

### OP-DN-07: Esteganografía en los Manuscritos Aristotélicos
- **Voz de Roshan:** *"Si deseas enviar un mensaje a través de los ojos de los censores del Visir, escríbelo en las márgenes invisibles de un tratado sobre la física de Aristóteles. Tinta de jugo de limón que solo se revela ante la llama de una vela templada."*
- **Vector de Amenaza:** *Covert Channel Data Exfiltration vía Steganography.*
- **Escenario:** Roshan establece contacto con intermediarios del bajo mundo en Bagdad utilizando libros prestados de la biblioteca pública.
- **Detección:** Los censores del Califa revisan cada página buscando consignas rebeldes, sátiras políticas o planes de sublevación.
- **Mitigación de Roshan:** Inyección de información cifrada en el espaciado tipográfico y micro-puntos de jugo orgánico invisible (Steganographic Payload Embedding).
- **Código y Tests:** `lib/alamut_sec/dn07_steganography.rb`. El test somete el texto al filtro de censura estándar (`CensorFilter.inspect`), el cual aprueba el documento con bandera `:clean_text`, pero el extractor térmico de Roshan (`RoshanThermalExtractor.reveal`) extrae el mensaje clandestino exacto.

### OP-DN-08: La Razzia de los Inspectores del Visir
- **Voz de Roshan:** *"Entraron con antorchas a medianoche. '¡Buscad a la asesina del muelle!', gritaba el oficial. Me convertí en el polvo entre las estanterías de astronomía. El conocimiento acumulado de siglos fue mi escudo de sombras."*
- **Vector de Amenaza:** *Forensic Anti-Tampering & Live Process Concealment under Intensive Threat Sweep.*
- **Escenario:** Una redada sorpresiva de la policía del Visir sella todas las salidas de la Casa de la Sabiduría para ejecutar una inspección nodo por nodo.
- **Detección:** Patrullas con linternas revisan cada sala de lectura, celda de copista y depósito subterráneo.
- **Mitigación de Roshan:** Evasión vertical trepando por los arcos ojivales y vigas del techo (Out-of-Scope Memory Space). Roshan se posiciona en una región del sistema que el inspector no mapea en su tabla de rutas habituales.
- **Código y Tests:** `lib/alamut_sec/dn08_vizier_raid.rb`. La suite simula una búsqueda exhaustiva en el plano bi-dimensional del edificio. Roshan escala al eje `:z_roof_truss`, logrando que la consulta forense retorne `:no_suspects_found`.

---

## ACTO III: LA OUBLIETTE DE EL CAIRO (EGIPTO, 824 d.C. — 22 AÑOS)

### OP-DN-09: El Calabozo Subterráneo y la Privación Total de Permisos
- **Voz de Roshan:** *"Cinco años después, el destino me cobró el peaje en Egipto. Una traición en los callejones de Fustat y desperté encadenada en el fondo de una cisterna romana bajo El Cairo. Sin luz, sin nombre, con los tobillos roídos por el hierro mohoso. Querían que me pudriera hasta olvidar quién era."*
- **Vector de Amenaza:** *Zero Trust Total Isolation & Air-Gapped Sandbox Imprisonment.*
- **Escenario:** Roshan ha sido despojada de todo artefacto, ropa identificable y canales de comunicación. Se encuentra en una máquina virtual completamente aislada (`chroot` severo sin binarios ni acceso a `/bin/sh`).
- **Detección:** Guardias exteriores revisan dos veces al día el pulso vital y la integridad de las cadenas mecánicas.
- **Mitigación de Roshan:** Mantenimiento de la integridad cognitiva interna (Kernel Resilience). Roshan entrena su mente calculando permutaciones de evasión y manteniendo su frecuencia cardíaca baja para reducir el consumo metabólico.
- **Código y Tests:** `lib/alamut_sec/dn09_cairo_oubliette.rb`. El test verifica que ante 100 ciclos de estrés térmico y privación sensorial, el contenedor mental de Roshan no colapsa en estado `:insanity_dump`, reteniendo su clave privada de identidad intacta.

### OP-DN-10: Interrogatorio y Resistencia a la Extracción Forzada
- **Voz de Roshan:** *"El carcelero trajo tenazas al rojo vivo. Preguntaban por las rutas de contrabando entre Alejandría y Bagdad. Les di sangre de mis encías y silencios tan profundos como el Nilo. Un secreto no se rompe si tú misma decides que ese recuerdo ha muerto."*
- **Vector de Amenaza:** *Brute Force Memory Dump Attack & Side-Channel Fault Injection.*
- **Escenario:** Interrogatorio bajo tortura diseñado para extraer credenciales criptográficas de la memoria de trabajo del agente mediante inyección de fallos por dolor físico.
- **Detección:** El interrogador evalúa las respuestas no verbales y pupilares para detectar inconsistencias lógicas.
- **Mitigación de Roshan:** Técnicas de disociación mental y fragmentación de secretos: la información crítica se almacena cifrada bajo un algoritmo de Shamir Secret Sharing mental, requiriendo un disparador contextual externo para reconstruirse.
- **Código y Tests:** `lib/alamut_sec/dn10_brute_force_interrogation.rb`. La suite demuestra que múltiples ataques de fuerza bruta solo devuelven bloques de ruido aleatorio (`:garbage_bytes`), preservando la confidencialidad de la red rebelde.

### OP-DN-11: La Visita del Encapuchado de Alamut
- **Voz de Roshan:** *"No hubo ruido de cerrojos rotos. Una sombra simplemente se materializó al otro lado de los barrotes. Un hombre envuelto en túnicas del color del desierto con un broche en forma de pluma de águila. 'Tienes fuego en la mirada, muchacha', dijo. 'Y el mundo necesita incendiar a los tiranos'."*
- **Vector de Amenaza:** *Covert Channel Handshake & Trusted Third-Party Out-of-Band Auth.*
- **Escenario:** Infiltración clandestina de un Maestro de Los Ocultos (emisario de Alamut) en el calabozo sin disparar las alarmas de la fortaleza egipcia.
- **Detección:** Los centinelas patrullan el pasillo perimetral cada 15 minutos con perros adiestrados.
- **Mitigación de Los Ocultos:** Uso de técnicas de paso invisible (Vanish Protocol) y manipulación de las rondas de guardia sobornando al centinela de relevo (Bypassing Perimeter Controls via Rogue Credential Injection).
- **Código y Tests:** `lib/alamut_sec/dn11_cloaked_stranger.rb`. La prueba valida la apertura de un canal de comunicación seguro y autenticado (`:secure_handshake_established`) dentro del nodo prisionero sin que los centinelas alteren su estado de `:patrolling_normal`.

### OP-DN-12: El Pacto de la Libertad Condicional
- **Voz de Roshan:** *"Me ofreció una llave y un puñal. Pero el precio era sangriento: debía unirme a una banda de perros rabiosos en el delta y robar un cofre blindado que se movía por la Ruta de la Seda hacia el este. Si aceptaba, tenía una segunda oportunidad de vida. Si me negaba, el verdugo vendría al amanecer. Nunca dudé."*
- **Vector de Amenaza:** *Cryptographic Token Issuance & Ephemeral Task Delegation.*
- **Escenario:** Emisión de un contrato de operaciones encubiertas. El emisario de Alamut genera un token de sesión de un solo uso (One-Time Authorization Token) que otorga a Roshan la capacidad de operar en nombre de la hermandad como agente auxiliar no iniciado.
- **Detección:** La Orden de los Antiguos monitorea emisiones masivas de contratos mercenarios en el puerto de El Cairo.
- **Mitigación:** La misión se enmascara bajo la fachada de un robo ordinario de forajidos del bajo mundo, desviando la atribución de Los Ocultos (False Flag Decoy).
- **Código y Tests:** `lib/alamut_sec/dn12_conditional_freedom.rb`. El test evalúa la validez temporal del token generado. Si expira el tiempo límite sin la recuperación del artefacto, el token se autodestruye (`:token_revoked`).

---

## ACTO IV: EL SINDICATO DE LOS OCHO (LA BANDA DE FORAJIDOS EN EL DELTA)

### OP-DN-13: El Despliegue de los Mercenarios Desechables
- **Voz de Roshan:** *"Ocho bastardos de distintas esquinas del imperio. Asesinos, desertores, falsificadores y ladrones de tumbas. Ninguno confiaba en el que tenía al lado, y todos tenían una mano en la empuñadura mientras comían. El emisario nos había juntado porque éramos prescindibles: si caíamos, nadie vendría a reclamar nuestros huesos."*
- **Vector de Amenaza:** *Unbonded Multi-Tenant Distributed Network Architecture (Untrusted Node Cluster).*
- **Escenario:** Creación de una unidad operativa compuesta por ocho nodos de alta volatilidad sin relación de confianza previa (Zero-Trust Ad-Hoc Mesh).
- **Detección:** Cualquier nodo mercenario puede actuar como informante encubierto o desertar para cobrar una recompensa.
- **Mitigación de Roshan:** Monitorización pasiva de tráfico interno (Internal EDR / Behavioral Telemetry). Roshan analiza las discrepancias de comportamiento en cada miembro del grupo.
- **Código y Tests:** `lib/alamut_sec/dn13_mercenary_cluster.rb`. El test simula un clúster de 8 nodos con parámetros de lealtad estocásticos, identificando anomalías en los patrones de respuesta de cada participante.

### OP-DN-14: Zabidas el Envenenador
- **Voz de Roshan:** *"Zabidas llevaba frascos de veneno de víbora de arena cosidos en el forro de su caftán. Sonreía con dientes amarillos y hablaba de cómo tres gotas de cicuta en el odre de agua podían apagar un regimiento entero sin afilar un sable. Un cobarde meticuloso, pero indispensable para la misión."*
- **Vector de Amenaza:** *Chemical / Remote Code Injection Payload Formulation (Weaponized Exploit Development).*
- **Escenario:** Desarrollo de un veneno de acción lenta para neutralizar los centinelas de los caravasares en las etapas de aprovisionamiento del convoy.
- **Detección:** Catadores de comida de la corte imperial y perros que inspeccionan los pozos de agua.
- **Mitigación:** Formulación de una toxina inodora e incolora que solo se activa tras combinarse con la salmuera del pan imperial (Delayed Logic Bomb Execution).
- **Código y Tests:** `lib/alamut_sec/dn14_zabidas_poison.rb`. La prueba evalúa la eficacia de la carga útil ante detectores estándar de acidez, demostrando que el veneno elude la cata inicial y se activa en el momento programado (`:delayed_detonation`).

### OP-DN-15: Tariq el Cerrajero de Bóvedas
- **Voz de Roshan:** *"Tariq podía escuchar el chasquido de los pasadores de bronce a través de tres pulgadas de madera de cedro reforzada con hierro. Decía que las cerraduras cantaban cuando estaban a punto de ceder. Su problema era que sus dedos también cantaban cuando veían oro que no era suyo."*
- **Vector de Amenaza:** *Biometric & Mechanical Lock Bypass (Hardware Security Module Physical Attack).*
- **Escenario:** Apertura de los cerrojos de tres combinaciones del vagón blindado imperial mediante ganzúas de acero templado y auscultación sónica.
- **Detección:** Mecanismos de trampa de aguja envenenada insertados en las cerraduras falsas del cofre.
- **Mitigación:** Detección de tensiones elásticas antes del torque completo: Tariq desactiva las espigas secundarias antes de forzar el tambor principal.
- **Código y Tests:** `lib/alamut_sec/dn15_tariq_lockpicker.rb`. La suite prueba que intentar el desbloqueo sin análisis de tensión detona el mecanismo de trampa (`:trap_triggered_poison`), mientras que la técnica de auscultación permite la apertura limpia (`:unlocked_clean`).

### OP-DN-16: Haytham el Desertor de Samarra
- **Voz de Roshan:** *"Haytham había sido guardia de élite turco en la guarnición califal de Samarra. Medía dos codos de ancho de hombros y conocía al dedillo los protocolos de escolta militar, los toques de trompeta y los cambios de turno en las torres. Su presencia era nuestro mapa del enemigo."*
- **Vector de Amenaza:** *Insider Threat Exploitation & Tactical Protocol Replay Attack.*
- **Escenario:** Utilización del conocimiento privilegiado de un ex-operador militar para predecir las rutas de patrulla y las contraseñas de reconocimiento del ejército imperial.
- **Detección:** Los oficiales imperiales actualizan las contraseñas de santo y seña cada ciclo de luna llena.
- **Mitigación:** Explotación de la inercia operacional: Haytham anticipa que los suboficiales de frontera reutilizan contraseñas antiguas por negligencia (Password Reuse Vulnerability).
- **Código y Tests:** `lib/alamut_sec/dn16_samarra_insider.rb`. La prueba valida el acceso a puntos de control militar probando combinaciones históricas de claves con una tasa de éxito del 88%.

### OP-DN-17: Dunya la Espía de Caravasares
- **Voz de Roshan:** *"Dunya se sentaba junto a los mercaderes armenios en el caravasar y con tres copas de vino de dátiles lograba que le contaran cuántos cofres llevaba el convoy, cuántos jinetes los protegían y qué insignias tenían los estandartes. Era más letal con una sonrisa que diez arqueros en una colina."*
- **Vector de Amenaza:** *Open Source Intelligence (OSINT) & Advanced Social Engineering.*
- **Escenario:** Extracción de metadatos de transporte mediante ingeniería social dirigida a comerciantes ebrios y conductores de camellos en la red de postas de la Ruta de la Seda.
- **Detección:** Espías de contrainteligencia de la Orden de los Antiguos apostados en las tabernas para detectar interrogadores curiosos.
- **Mitigación:** Técnica de cuestionamiento indirecto (Elicitation Tactics): Dunya nunca pregunta por el cofre; siembra rumores falsos sobre bandidos en rutas alternativas para que el comerciante rectifique y revele la ruta real del convoy.
- **Código y Tests:** `lib/alamut_sec/dn17_dunya_osint.rb`. La suite demuestra que las preguntas directas levantan sospechas (`:counter_intel_alert`), mientras que la técnica de elicitación extrae el itinerario con cero nivel de alerta (`:itinerary_acquired`).

### OP-DN-18: Faruq el Ariete de Daylam
- **Voz de Roshan:** *"Un gigante de las montañas de Daylam con un mazo de guerra que podía partir el eje de una carreta de un solo golpe. Cuando la sutileza fallaba, Faruq era la fuerza bruta que rompía las líneas de escudos y derribaba las barricadas de estacas."*
- **Vector de Amenaza:** *Distributed Denial of Service & Hardware Physical Smashing (Brute Force Rampage).*
- **Escenario:** Asalto violento contra el perímetro exterior de lanceros imperiales para distraer a la escolta y abrir una brecha física.
- **Detección:** Formación de falange de escudos de la guardia abasí capaz de repeler ataques convencionales.
- **Mitigación:** Impacto cinético concentrado en los puntos de unión de los pivotes de madera de la formación (Resource Exhaustion / Buffer Overflow).
- **Código y Tests:** `lib/alamut_sec/dn18_faruq_brute_force.rb`. La prueba verifica que la formación defensiva colapsa cuando el volumen de impacto cinético excede el umbral de tolerancia estructural de los escudos.

### OP-DN-19: Layla la Falsificadora de Salvoconductos
- **Voz de Roshan:** *"Layla tenía tinta de sepia, pergaminos de seda de Samarcanda y sellos de cera idénticos a los del Gran Chambelán de Bagdad. Con su cálamo podía hacer que ocho asesinos armados hasta los dientes pasaran ante los ojos de un cadí como una comitiva de emisarios diplomáticos."*
- **Vector de Amenaza:** *X.509 Certificate Forgery & Identity Spoofing (Forged Credentials / Golden Ticket).*
- **Escenario:** Creación de documentos de tránsito imperial sellados para franquear los puestos de aduana fiscal en la frontera persa.
- **Detección:** Los oficiales de aduana cotejan los sellos con los registros maestros de la cancillería de Bagdad.
- **Mitigación:** Clonación de la marca de agua y simulación del desgaste del pergamino (Flawless Certificate Impersonation) aprovechando que las postas fronterizas carecen de conexión en tiempo real con la capital para verificar la vigencia de la firma (Lack of CRL / OCSP Offline Verification).
- **Código y Tests:** `lib/alamut_sec/dn19_layla_forged_permits.rb`. La suite prueba que el puesto de control offline valida el salvoconducto falsificado (`:transit_granted`), mientras que un intento de validación online levantaría la anomalía.

### OP-DN-20: La Desconfianza Bizantina en el Campamento
- **Voz de Roshan:** *"Alrededor de la hoguera, nadie dormía de espaldas a los demás. Sabía que Zabidas miraba la bolsa de Tariq, y que Faruq sospechaba que el emisario de Alamut nos mataría a todos una vez conseguido el cofre. Si una sola chispa caía en ese polvorín, nos degollaríamos antes de ver el polvo del convoy."*
- **Vector de Amenaza:** *Byzantine Fault Consensus Breakdown in Hostile Distributed Systems.*
- **Escenario:** Deterioro del protocolo de coordinación entre los ocho nodos rebeldes. Riesgo de bifurcación hostil (Hard Fork / Split-Brain) donde una facción decida asesinar al resto para quedarse con el botín.
- **Detección:** Monitoreo de susurros, apartamientos tácticos y lenguaje corporal durante el reparto de raciones de agua.
- **Mitigación de Roshan:** Imposición de un protocolo de consenso mediante disuasión armada y juego de intereses cruzados: Roshan se sitúa como el validador neutral que custodia el agua y la pólvora, forzando la cooperación hasta el objetivo final.
- **Código y Tests:** `lib/alamut_sec/dn20_byzantine_camp.rb`. La prueba valida la estabilidad del clúster bajo simulaciones de traición individual; el algoritmo de mediación armada de Roshan preserva la integridad del grupo en un 100% de los escenarios pre-asalto.

---

## ACTO V: LA INTERCEPTACIÓN EN LA RUTA DE LA SEDA (TRAVESÍA A PERSIA)

### OP-DN-21: Vigilancia del Convoy Imperial en el Desierto
- **Voz de Roshan:** *"Desde lo alto de una duna roja, vimos la serpiente de polvo que avanzaba por la llanura. Veinte jinetes con cotas de malla brillantes, diez arqueros a camello y en el centro, el pesado carromato de seis ruedas cubierto de lonas enceradas y cadenas de hierro negro. La presa estaba a la vista."*
- **Vector de Amenaza:** *Supply Chain Target Reconnaissance & Route Profiling.*
- **Escenario:** Rastreo visual y cartográfico del convoy que transporta el contenedor de la reliquia Isu a lo largo de las rutas comerciales entre Mesopotamia y la meseta iraní.
- **Detección:** Piquetes de caballería ligera imperial exploran las crestas de las dunas en un radio de media legua.
- **Mitigación:** Posicionamiento en el ángulo ciego del sol y movimiento al amanecer contra el viento para evitar que el polvo revele la presencia de los atacantes (Stealth Observation / Radio Silence).
- **Código y Tests:** `lib/alamut_sec/dn21_convoy_recon.rb`. La suite verifica que la posición del grupo de Roshan se mantenga fuera del radio de detección visual de los exploradores imperiales.

### OP-DN-22: La Tormenta de Arena del Espejismo
- **Voz de Roshan:** *"El viento del este trajo el Simún. Una muralla de arena roja de cien pies de altura que devoró el sol y convirtió el mediodía en una noche abrasadora. Los soldados se envolvieron los rostros y perdieron de vista a sus camaradas. Ese no fue un castigo del desierto; fue nuestra cobertura."*
- **Vector de Amenaza:** *Environmental Jamming & Man-in-the-Middle Disruption (Signal Blinding).*
- **Escenario:** Ataque coordinado durante una tormenta de arena extrema que anula los canales de comunicación visual y auditiva de la escolta del convoy.
- **Detección:** Los cuernos de señales y trompetas de mando del convoy intentan mantener la cohesión de la formación.
- **Mitigación:** Disrupción intencionada de las señales de trompeta haciendo sonar un cuerno idéntico en dirección contraria, enviando a la vanguardia de caballería lejos del carromato central (Spoofed Command Beaconing).
- **Código y Tests:** `lib/alamut_sec/dn22_sandstorm_jamming.rb`. La suite modela la pérdida de paquetes de mando del convoy bajo la tormenta. Con el spoofing acústico activo, la escolta se dispersa y el vagón central queda desprotegido.

### OP-DN-23: Asalto al Carromato Blindado
- **Voz de Roshan:** *"Nos deslizamos entre las ruedas como fantasmas. Faruq calzó un leño de hierro entre los radios del carromato principal, quebrando el eje con un estruendo de madera destrozada. Antes de que los guardias empuñaran las cimitarras, nuestras hojas ya buscaban las junturas de sus corazas."*
- **Vector de Amenaza:** *Physical Perimeter Penetration & Rapid Denial of Mobility (Kinetic Exploitation).*
- **Escenario:** Inmovilización forzada del nodo de transporte y aniquilación de los procesos centinela locales antes de que puedan emitir una llamada de socorro a la fortaleza más cercana.
- **Detección:** El oficial del convoy intenta liberar una paloma mensajera con un tubo de socorro.
- **Mitigación de Roshan:** Roshan intercepta la paloma en pleno vuelo con un tiro certero de cuchillo arrojadizo, impidiendo la emisión del paquete de alerta SOS fuera de banda (Out-of-Band Exfiltration Interdiction).
- **Código y Tests:** `lib/alamut_sec/dn23_caravan_assault.rb`. La prueba valida que el carromato quede en estado `:immobilized` y que el intento de envío de alerta (`sos_beacon.dispatched?`) sea interceptado con éxito.

### OP-DN-24: La Bóveda de Madera y Bronce Marcada
- **Voz de Roshan:** *"Arrancamos las lonas. Allí estaba: un cajón de madera negra que no pertenecía a este siglo, sellado con bandas de oricalco y grabados geométricos que brillaban con una tenue luminiscencia azulada. No pesaba como el plomo ni como el oro; pesaba como si el aire alrededor de él se volviera denso."*
- **Vector de Amenaza:** *Cryptographic Hardware Security Module (HSM) Interception.*
- **Escenario:** Descubrimiento y sustracción del contenedor seguro Isu. El contenedor está protegido por un sistema de candados mecánicos combinados con un blindaje que absorbe impactos y pulso cinético.
- **Detección:** Sensores pasivos de inclinación y vibración que pueden autodestruir el contenido si se intenta forzar con explosivos o calor directo.
- **Mitigación:** Extracción suave del cofre completo sin forzar el sello primario sobre el terreno, manteniéndolo en suspensión elástica sobre camillas de lona (Safe Payload Handling).
- **Código y Tests:** `lib/alamut_sec/dn24_isu_crate.rb`. La suite prueba que cualquier impacto con fuerza superior a 50 Nm activa la trampa de autodestrucción (`:tamper_circuit_blown`), mientras que el protocolo de extracción de Roshan mantiene la integridad de la reliquia (`:artifact_intact`).

### OP-DN-25: La Radiación del Artefacto de la Primera Civilización
- **Voz de Roshan:** *"Tariq tocó la cerradura de oricalco con la punta de su daga y cayó al suelo convulsionando, con sangre brotando de su nariz y ojos. El aire olía a relámpago y ozono. Esa cosa no era una joya ni un arma de reyes; era un fragmento de los dioses que susurraba en un lenguaje que quebraba la razón humana."*
- **Vector de Amenaza:** *Zero-Day Quantum Memory Bleed & Neurological Firmware Overwrite (Isu Signal Radiation).*
- **Escenario:** Emisión de un pulso electromagnético y cognitivo por parte del artefacto Isu que satura los sentidos y corrompe los sistemas nerviosos de los operadores expuestos sin blindaje.
- **Detección:** Distorsión magnética en brújulas y desorientación espacial en los caballos y miembros de la banda.
- **Mitigación de Roshan:** Envoltura inmediata del contenedor en mantas de plomo y seda cruda impregnadas en ceniza volcánica (Faraday Cage Isolation). Roshan comprende por instinto que la reliquia no debe ser tocada directamente con metales conductores.
- **Código y Tests:** `lib/alamut_sec/dn25_isu_radiation.rb`. La prueba verifica que sin la jaula de Faraday improvisada, los nodos adyacentes entran en colapso neuronal (`:cognitive_kernel_panic`); con el blindaje, la radiación se atenúa a niveles seguros (`:contained_leakage`).

---

## ACTO VI: LA MASACRE EN LAS DUNAS Y LA TRAICIÓN INTERNA

### OP-DN-26: La Codicia de los Mercenarios
- **Voz de Roshan:** *"Apenas dejamos atrás los cuerpos de los guardias imperiales, la locura se apoderó de ellos. Zabidas decía que en Samarcanda un príncipe pagaría una montaña de rubíes por la caja. Dunya quería abrirla para ver el contenido. Vi cómo sus ojos se cruzaban: la misión de Alamut ya no importaba. Habían decidido repartirse los restos y matarme a mí primero."*
- **Vector de Amenaza:** *Rogue Insider Collusion & Hostile Takeover Attempt (Byzantine Fault Subversion).*
- **Escenario:** Siete de los ocho miembros del escuadrón mercenario coluden para rescindir el contrato original y revender el artefacto Isu en el mercado negro persa, declarando a Roshan como blanco prioritario a eliminar.
- **Detección:** Roshan detecta el cambio de protocolo: Zabidas sirve té amargo en la ronda de vigilia y Faruq toma posición a su espalda con el mazo desenvainado.
- **Mitigación de Roshan:** Previsión táctica de la traición (Proactive Threat Modeling). Roshan nunca bebió del té; había sustituido su taza por una ración de vinagre diluido y se encontraba en postura de combate antes de la primera embestida.
- **Código y Tests:** `lib/alamut_sec/dn26_mercenary_mutiny.rb`. La suite prueba que el ataque sorpresa de los siete mercenarios resulta en la muerte del objetivo si este se encuentra en estado pasivo (`:ambush_successful`), mientras que el estado de guardia preventiva de Roshan repele el primer golpe y activa la contraofensiva (`:counter_attack_engaged`).

### OP-DN-27: El Motín de Zabidas y Tariq
- **Voz de Roshan:** *"Zabidas me arrojó veneno a los ojos mientras Tariq se abalanzaba con un estilete envenenado. Pero la arena del desierto tiene memoria: me dejé caer de espaldas, levanté un puñado de arena para desviar la nube tóxica y atravesé la garganta de Tariq con la misma aguja de cobre que guardaba desde Bagdad."*
- **Vector de Amenaza:** *Multi-Vector Coordinated Attack (Exploit Chaining: Poison Bomb + Stabbing Buffer Overflow).*
- **Escenario:** Ataque coordinado entre el payload químico a distancia y la penetración física a corta distancia ejecutado por los líderes del motín.
- **Detección:** Trayectoria de la nube tóxica y aproximación veloz en el ángulo ciego.
- **Mitigación de Roshan:** Absorción y deflexión cinética (Dynamic Payload Redirection). Roshan utiliza el propio cuerpo de Tariq como escudo biológico contra la nube venenosa de Zabidas, eliminando a dos atacantes con su propio vector de ataque.
- **Código y Tests:** `lib/alamut_sec/dn27_dual_assault_mitigation.rb`. La prueba valida que la respuesta de Roshan neutralice simultáneamente a ambos agresores, preservando su salud en 100% y dejando a los atacantes en estado `:eliminated`.

### OP-DN-28: Ejecución de la Hoja en la Tormenta
- **Voz de Roshan:** *"Uno tras otro. Faruq con su fuerza bruta fue lento contra mis giros en la arena movediza; una estocada detrás de la rodilla y su peso hizo el resto. Dunya suplicó misericordia, pero en las sombras no hay clemencia para los traidores. Cuando el sol se ocultó, los siete mercenarios eran comida de buitres. Solo quedábamos la caja Isu y yo."*
- **Vector de Amenaza:** *Systematic Threat Elimination & Clean Process Kill Cycle.*
- **Escenario:** Neutralización metódica de los cinco atacantes restantes (Faruq, Dunya, Haytham, Layla y Zabidas) en el entorno hostil del desierto durante el anochecer.
- **Detección:** Movimientos de pinza y cerco táctico de los supervivientes.
- **Mitigación de Roshan:** Divide y vencerás: uso de trampas de arena, señuelos sonoros y la oscuridad del desierto para aislar cada proceso hostil y ejecutar un SIGKILL secuencial sin confrontación masiva simultánea.
- **Código y Tests:** `lib/alamut_sec/dn28_blade_execution.rb`. La suite prueba la ejecución secuencial de los hilos hostiles: cada hilo es terminado con código de salida 0 sin permitir la reactivación de subprocesos secundarios.

### OP-DN-29: Recuperación de la Reliquia y Aislamiento Cuántico
- **Voz de Roshan:** *"Aseguré el cajón en la albarda de mi camello más fuerte. La madera ya no vibraba; parecía reconocer que había un solo amo sobre la arena. Cargué agua para tres días y tomé la ruta hacia las cumbres del norte, donde los picos de Daylam tocan el cielo."*
- **Vector de Amenaza:** *Secure Enclave Encapsulation & Transport Verification.*
- **Escenario:** Estabilización física y lógica del artefacto Isu recuperado tras la masacre, asegurando que ninguna telemetría o señal anómala se emita durante la travesía hacia la fortaleza de Los Ocultos.
- **Detección:** Posibles emisiones de radiofrecuencia o resonancia Isu captadas por vigías o agentes de la Orden de los Antiguos.
- **Mitigación:** Doble flejado con cuero de cabra crudo y sellado hermético con resina de pino y plomo fundido, suprimiendo toda traza electromagnética residual.
- **Código y Tests:** `lib/alamut_sec/dn29_artifact_encapsulation.rb`. El test verifica que la firma espectral del contenedor retorne un nivel de emisión de 0 dBm, garantizando el sigilo absoluto del transporte.

### OP-DN-30: La Purgación de los Rastros en la Arena
- **Voz de Roshan:** *"El viento del desierto es el mejor cómplice del asesino. Borré cada huella de sangre, dispersé las armas de los mercenarios en el mar de dunas y dejé que el Simún cubriera los cuerpos con tres pies de tierra roja. Cuando la caravana de socorro del Califato llegó, solo encontró arena limpia y silencio."*
- **Vector de Amenaza:** *Forensic Anti-Tampering & Complete System Trace Scrubbing (Zero-Fill Memory Overwrite).*
- **Escenario:** Eliminación absoluta de artefactos forenses en el teatro de operaciones (IoCs, restos biológicos, huellas de herraduras, casquillos de armas).
- **Detección:** Rastreadores beduinos contratados por el ejército del Califa expertos en lectura de huellas sobre arena (Expert Forensic Analysis).
- **Mitigación:** Uso de mantas de arrastre para alisar el suelo y quema controlada de los campamentos temporales, logrando un estado de entropía indistinguible del terreno natural.
- **Código y Tests:** `lib/alamut_sec/dn30_forensic_scrubbing.rb`. La suite demuestra que las herramientas forenses de rastreo de anomalías arrojan una tasa de correlación de 0.00% respecto al incidente.

---

## ACTO VII: EL ASCENSO A ALAMUT Y EL BAUTISMO DE SOMBRAS

### OP-DN-31: La Travesía Solitaria por los Riscos de Daylam
- **Voz de Roshan:** *"Cababalgué durante semanas dejando atrás el calor de Bagdad. El aire se volvió fino y helado. Los senderos de Daylam son cornisas de piedra suspendidas sobre abismos sin fondo. Si el caballo resbala, no hay oración que te salve. Pero sabía que al final del desfiladero estaba la respuesta a mi vida entera."*
- **Vector de Amenaza:** *Air-Gapped Infiltration through Perimeter Mountain Gateways.*
- **Escenario:** Navegación por la cordillera de Elburz hacia el emplazamiento secreto de la fortaleza de Alamut en construcción, sorteando puestos de vigilancia clandestinos de tribus hostiles.
- **Detección:** Atalayas de vigilancia camufladas en los riscos que arrojan flechas a cualquier intruso que no emita la señal correcta de paso.
- **Mitigación:** Roshan exhibe la pluma de águila y realiza el silbido codificado de tres tonos aprendido del encapuchado de El Cairo (Out-of-Band Physical Handshake).
- **Código y Tests:** `lib/alamut_sec/dn31_alamut_ascent.rb`. La prueba valida que el avance sin la señal acústica dispara un estado de `:hostile_interception`, mientras que la secuencia de tres tonos desbloquea el paso seguro (`:passage_granted`).

### OP-DN-32: El Juicio del Mentor Rayhan
- **Voz de Roshan:** *"En el patio de armas de Alamut, rodeada de andamios y canteros cortando roca viva, me esperaba Rayhan. Sus ojos eran como los de un halcón viejo que ha visto caer a cien reyes. Puse el cajón Isu a sus pies. Me miró, miró las manchas de sangre seca en mis manos y preguntó: '¿A quién sirves, muchacha?'. Respondí: 'A nadie más que a mi propia voluntad de ser libre'."*
- **Vector de Amenaza:** *Root Certificate Validation & Security Clearance Attestation.*
- **Escenario:** Evaluación de lealtad, pureza de intención y salud mental de la candidata por parte del Consejo de Maestros de Los Ocultos antes de otorgar credenciales de nivel Root.
- **Detección:** Detección de posibles infiltrados, agentes dobles de la Orden de los Antiguos o mercenarios corruptos por el poder del artefacto.
- **Mitigación:** Roshan entrega voluntariamente la reliquia sin exigir oro ni recompensa mundana, demostrando inmunidad a la codicia y alineación absoluta con los tres principios del Credo.
- **Código y Tests:** `lib/alamut_sec/dn32_rayhan_judgment.rb`. La suite prueba la evaluación de clearance: la entrega voluntaria del artefacto concede el estatus `:clearance_approved_level_master`.

### OP-DN-33: El Rito del Dedo Anular Cercenado
- **Voz de Roshan:** *"Coloqué mi mano izquierda sobre el bloque de madera de cedro. Rayhan levantó la cuchilla curva. 'El precio de la verdad es un pedazo de ti misma', me advirtió. No aparté la mirada ni parpadeé cuando el acero cortó el hueso. El dolor fue una llamarada blanca, pero cuando cauterizaron la herida con hierro ardiendo, supe que mi antigua vida había muerto para siempre."*
- **Vector de Amenaza:** *Cryptographic Revocation of Mortal Identity & Hardware Binding (Sacrifice of the Ring Finger).*
- **Escenario:** El ritual físico y simbólico de iniciación de Los Ocultos. La amputación del dedo anular permite el paso fluido de la Hoja Oculta (Hidden Blade) y actúa como un factor de autenticación biométrica irrevocable (Hardware Bound Token).
- **Detección:** Los agentes sin el dedo amputado no pueden montar el brazalete de la Hoja Oculta sin riesgo de auto-lesión mecánica.
- **Mitigación:** Amputación y sellado quirúrgico de la herida, calibrando el brazalete asesino con un mecanismo de resorte de liberación rápida que solo encaja en la mano de cuatro dedos.
- **Código y Tests:** `lib/alamut_sec/dn33_severed_finger.rb`. La prueba valida que el intento de disparo de la Hoja Oculta con cinco dedos genera un error de colisión física (`:mechanical_jam_failure`), mientras que la configuración de cuatro dedos permite el despliegue instantáneo a 0.05 segundos (`:blade_deployed_lethal`).

### OP-DN-34: La Consagración de la Hija de Nadie
- **Voz de Roshan:** *"Rayhan me cubrió con el manto blanco y la faja carmesí de Los Ocultos. 'Ya no eres la esclava del puerto ni la presa de El Cairo', me dijo. '¿Cuál es tu nombre?'. Miré el valle de Alamut extendiéndose bajo las nubes y respondí: 'Roshan bint-La'Ahad. Hija de Nadie. Hermana de las Sombras'. Y desde ese día, mi sombra fue la pesadilla de la Orden."*
- **Vector de Amenaza:** *Master Assassin Root Provisioning & Credential Minting.*
- **Escenario:** Registro oficial del nuevo nodo maestro en la base de datos de confianza de Alamut OS. Se revoca todo alias anterior y se genera un par de claves asimétricas RSA-4096 / Ed25519 con el certificado de Maestra Asesina.
- **Detección:** Intentos de correlación de inteligencia por parte de los archivos de la policía del Califato buscando a la fugitiva de Bagdad.
- **Mitigación:** El registro anterior de la muchacha es marcado como `:deceased_in_desert` en los registros del Califato, mientras que el nodo `:roshan_bint_lahad` nace en la red de Los Ocultos con privilegios plenos de defensa y comando.
- **Código y Tests:** `lib/alamut_sec/dn34_daughter_of_no_one_consecration.rb`. La suite valida la emisión del certificado final de Maestra, la revocación de la identidad previa y la plena operatividad de la suite de defensa en Alamut OS.

---

## 5. CONCLUSIÓN Y MAPEO A LA SUITE DE 108 EPISODIOS

Esta matriz de 34 grandes operaciones de *Daughter of No One* sienta las bases de los primeros 54 episodios del laboratorio general de ciberseguridad, complementándose con los 54 episodios posteriores que cubren la historia principal de ***Assassin's Creed Mirage*** (el arco completo de Basim Ibn Ishaq desde los tejados de Anbar hasta el Despertar de Loki bajo la cripta de Alamut).

Cada episodio individual cuenta con su archivo canónico en `prompts/ep[XX]_prompt.md`, su clase Ruby verificada en `lib/alamut_sec/` y su prueba automatizada en `test/episodios/ep[XX]_test.rb`, constituyendo una experiencia de aprendizaje interactiva, rigurosa y sin parangón.
