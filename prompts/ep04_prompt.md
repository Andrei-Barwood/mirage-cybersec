# PLANTILLA DE EPISODIO: 04 - The Harbour Guard's Network Sweep

**Voz de la Maestra Roshan bint-La'Ahad:**
> *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

---

## 1. Contexto Operativo (Canon vs Cybersec)
- **Actor Hostil / Amenaza Canónica:** Prefect of Police Port Sweep
- **Vector de Ataque (Analogía Técnica):** Mass Port Scanning & SYN Flood Infiltration Sweep
- **Táctica MITRE ATT&CK Relacionada:** T1046 - Network Service Discovery
- **Descripción del Escenario:** La policía del puerto despliega un barrido masivo en el distrito de Karkh pegando descripciones de Roshan en cada mezquita y mercado.

---

## 2. Reconocimiento y Detección Temprana (Visión de Águila / Analyzer)
- **Superficie de Exposición:** Interfaces periféricas, puestos de control y canales de memoria vulnerables.
- **Mecanismos de Detección:** Informantes y agentes escaneando activamente los rostros en las plazas públicas.
- **Fallo de Seguridad Primario:** Deficiencias en el aislamiento de privilegios y falta de verificación de integridad en tiempo de ejecución.

---

## 3. Mitigación y Neutralización Quirúrgica (La Hoja Oculta / Countermeasures)
- **Herramienta Defensiva de Los Ocultos:** Roshan bint-La'Ahad / Basim Ibn Ishaq (Operaciones Clandestinas).
- **Protocolo de Contramedida Aplicado:** Roshan viste ropas de cargador de harina y camufla su presencia en el tráfico comercial habitual (Traffic Padding / Mimicry).

---

## 4. Análisis Forense y Reporte de Inteligencia (PDF Intelligence Dossier)
- **Artefactos Forenses e IoCs:** Altas tasas de solicitudes de identidad en el mercado; descarte de alertas por ruido de fondo.
- **Recomendaciones Tácticas Post-Mortem:** Implementación de segmentación estricta, rotación de claves maestras y descarte de tráfico anómalo.

---

## 5. Especificación de Código Ejecutable (Pruebas con Minitest)
- **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep04_harbour_sweep.rb`
- **Ruta de la Suite de Pruebas:** `test/episodios/ep04_test.rb`
*(El test valida el estado de compromiso inicial y la restauración completa tras la mitigación del Credo).*
