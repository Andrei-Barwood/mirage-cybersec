# PLANTILLA DE EPISODIO: 01 - The Harbour Master's Chains

**Voz de la Maestra Roshan bint-La'Ahad:**
> *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

---

## 1. Contexto Operativo (Canon vs Cybersec)
- **Actor Hostil / Amenaza Canónica:** The Harbour Master of Baghdad
- **Vector de Ataque (Analogía Técnica):** Privilege Escalation via Domestic Account Hijacking
- **Táctica MITRE ATT&CK Relacionada:** T1078 - Valid Accounts / T1068 - Exploitation for Privilege Escalation
- **Descripción del Escenario:** A los 17 años, Roshan sobrevive como quinta esposa cautiva del tiránico Capitán del Puerto de Bagdad. El nodo maestro del puerto mantiene control totalitario y permisos restringidos para los esclavos. Roshan identifica un canal lateral de somnolencia durante las horas de opio del Capitán.

---

## 2. Reconocimiento y Detección Temprana (Visión de Águila / Analyzer)
- **Superficie de Exposición:** Interfaces periféricas, puestos de control y canales de memoria vulnerables.
- **Mecanismos de Detección:** Vigilancia de guardias armados y registros de accesos físicos al llavero maestro.
- **Fallo de Seguridad Primario:** Deficiencias en el aislamiento de privilegios y falta de verificación de integridad en tiempo de ejecución.

---

## 3. Mitigación y Neutralización Quirúrgica (La Hoja Oculta / Countermeasures)
- **Herramienta Defensiva de Los Ocultos:** Roshan bint-La'Ahad / Basim Ibn Ishaq (Operaciones Clandestinas).
- **Protocolo de Contramedida Aplicado:** Roshan clona las muescas de las llaves en arcilla blanda y accede al compartimento secreto de armas sin disparar la alarma.

---

## 4. Análisis Forense y Reporte de Inteligencia (PDF Intelligence Dossier)
- **Artefactos Forenses e IoCs:** Muescas de compresión en cerraduras de bronce e inconsistencias temporales en guardias.
- **Recomendaciones Tácticas Post-Mortem:** Implementación de segmentación estricta, rotación de claves maestras y descarte de tráfico anómalo.

---

## 5. Especificación de Código Ejecutable (Pruebas con Minitest)
- **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep01_harbour_servitude.rb`
- **Ruta de la Suite de Pruebas:** `test/episodios/ep01_test.rb`
*(El test valida el estado de compromiso inicial y la restauración completa tras la mitigación del Credo).*
