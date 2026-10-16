# PLANTILLA DE EPISODIO: [Número de Episodio] - [Nombre Canónico del Incidente]

**Voz de la Maestra Roshan bint-La'Ahad:**  
> *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

---

## 1. Contexto Operativo (Canon vs Cybersec)
- **Actor Hostil / Amenaza Canónica:** [ej. Mas'ood Al-Ya'qub (Al-Ghul) / El Capitán del Puerto / Zabidas el Envenenador]
- **Vector de Ataque (Analogía Técnica):** [ej. Ataque de Canal Lateral / Inyección SQL a la Base de Datos Registral / Man-in-the-Middle en Caravana]
- **Táctica MITRE ATT&CK Relacionada:** [ej. T1190 Exploit Public-Facing Application / T1056 Input Capture]
- **Descripción del Escenario:** [Crónica detallada y verbosa de cómo el evento canónico de Assassin's Creed Mirage o Daughter of No One se traduce a un incidente crítico en la infraestructura digital o red de información de Alamut / Califato Abasí].

---

## 2. Reconocimiento y Detección Temprana (Visión de Águila / Analyzer)
- **Superficie de Exposición:** [Puntos de entrada, puertos abiertos, contratos no validados, interfaces vulnerables].
- **Mecanismos de Detección:** [Sondas de telemetría, inspección profunda de paquetes (DPI), firmas YARA, reglas Snort/Suricata simuladas].
- **Fallo de Seguridad Primario:** [¿Por qué fallaron las defensas perimetrales iniciales del Califato o de la red local? Brecha de autenticación, falta de saneamiento de entradas, credenciales por defecto, etc.].

---

## 3. Mitigación y Neutralización Quirúrgica (La Hoja Oculta / Countermeasures)
- **Herramienta Defensiva de Los Ocultos:** [ej. Roshan bint-La'Ahad (Aislamiento Criptográfico en Enclave Seguro) / Basim Ibn Ishaq (Anulación de Sesiones Forjadas)].
- **Protocolo de Contramedida Aplicado:** [Detalle paso a paso del código y la arquitectura de mitigación: rotación de claves efímeras, microsegmentación de subredes, sanitización en caliente de memoria, revocación de certificados].

---

## 4. Análisis Forense y Reporte de Inteligencia (PDF Intelligence Dossier)
- **Artefactos Forenses e IoCs:** [Hashes maliciosos, patrones de carga útil (payloads), firmas de la Orden de los Antiguos].
- **Recomendaciones Tácticas Post-Mortem:** [Medidas preventivas estrictas para endurecer el nodo y evitar la reinfección o escalado lateral].

---

## 5. Especificación de Código Ejecutable (Pruebas con Minitest)
- **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep[XX]_[slug].rb`
- **Ruta de la Suite de Pruebas:** `test/episodios/ep[XX]_test.rb`
- **Comportamiento del Test con Mordida:**  
  - *Test de Vulnerabilidad:* Sin la intervención de Los Ocultos, el ataque debe comprometer el nodo o provocar un fallo crítico (`assert_equal :compromised, status` o raise exception).
  - *Test de Mitigación:* Al desplegar la defensa de Los Ocultos, el ataque es neutralizado, el tráfico hostil descartado y la integridad del sistema preservada (`assert_equal :secured, status` y logs limpios).
