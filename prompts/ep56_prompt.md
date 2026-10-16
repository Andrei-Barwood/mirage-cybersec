# PLANTILLA DE EPISODIO: 56 - Pickpocketing the Tax Collector

**Voz de la Maestra Roshan bint-La'Ahad:**
> *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

---

## 1. Contexto Operativo (Canon vs Cybersec)
- **Actor Hostil / Amenaza Canónica:** Abbasid Tax Collector
- **Vector de Ataque (Analogía Técnica):** Unauthorized Transaction Injection
- **Táctica MITRE ATT&CK Relacionada:** T1059 / T1190 - Exploit Public-Facing Application / Execution
- **Descripción del Escenario:** Operación 56 canónica de Assassin's Creed Mirage. El objetivo Abbasid Tax Collector despliega un vector Unauthorized Transaction Injection comprometiendo la red de Alamut o Bagdad. Los Ocultos intervienen con mitigaciones verificables.

---

## 2. Reconocimiento y Detección Temprana (Visión de Águila / Analyzer)
- **Superficie de Exposición:** Interfaces periféricas, puestos de control y canales de memoria vulnerables.
- **Mecanismos de Detección:** Telemetría de sockets, análisis heurístico y firmas de amenaza.
- **Fallo de Seguridad Primario:** Deficiencias en el aislamiento de privilegios y falta de verificación de integridad en tiempo de ejecución.

---

## 3. Mitigación y Neutralización Quirúrgica (La Hoja Oculta / Countermeasures)
- **Herramienta Defensiva de Los Ocultos:** Roshan bint-La'Ahad / Basim Ibn Ishaq (Operaciones Clandestinas).
- **Protocolo de Contramedida Aplicado:** Aislamiento criptográfico y neutralización del proceso hostil mediante contramedidas de Los Ocultos.

---

## 4. Análisis Forense y Reporte de Inteligencia (PDF Intelligence Dossier)
- **Artefactos Forenses e IoCs:** Volcados forenses de memoria y purga de rastros IoC.
- **Recomendaciones Tácticas Post-Mortem:** Implementación de segmentación estricta, rotación de claves maestras y descarte de tráfico anómalo.

---

## 5. Especificación de Código Ejecutable (Pruebas con Minitest)
- **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep56_pickpocketing_the_tax_collector.rb`
- **Ruta de la Suite de Pruebas:** `test/episodios/ep56_test.rb`
*(El test valida el estado de compromiso inicial y la restauración completa tras la mitigación del Credo).*
