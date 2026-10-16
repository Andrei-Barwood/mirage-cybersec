# PLANTILLA DE EPISODIO: 90 - Quarantining the Foreign Ships

**Voz de la Maestra Roshan bint-La'Ahad:**
> *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

---

## 1. Contexto Operativo (Canon vs Cybersec)
- **Actor Hostil / Amenaza Canónica:** Contraband Smugglers
- **Vector de Ataque (Analogía Técnica):** Supply Chain Quarantining
- **Táctica MITRE ATT&CK Relacionada:** T1059 / T1190 - Exploit Public-Facing Application / Execution
- **Descripción del Escenario:** Operación 90 canónica de Assassin's Creed Mirage. El objetivo Contraband Smugglers despliega un vector Supply Chain Quarantining comprometiendo la red de Alamut o Bagdad. Los Ocultos intervienen con mitigaciones verificables.

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
- **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep90_quarantining_the_foreign_ships.rb`
- **Ruta de la Suite de Pruebas:** `test/episodios/ep90_test.rb`
*(El test valida el estado de compromiso inicial y la restauración completa tras la mitigación del Credo).*
