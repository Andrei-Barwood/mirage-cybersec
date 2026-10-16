# PLANTILLA DE EPISODIO: 08 - The Bribe at Bab al-Sham

**Voz de la Maestra Roshan bint-La'Ahad:**
> *"Presta atención, novicio. La Orden de los Antiguos no conquista ciudades con arietes abiertos; se infiltran en el agua que bebes, sobornan al escriba y alteran los sellos del Califa. Si no aprendes a leer las sombras de este sistema, tu cabeza terminará en una pica en la Puerta de Bab al-Sham."*

---

## 1. Contexto Operativo (Canon vs Cybersec)
- **Actor Hostil / Amenaza Canónica:** Bab al-Sham Gate Guard
- **Vector de Ataque (Analogía Técnica):** Social Engineering & Unauthorized Session Token Injection
- **Táctica MITRE ATT&CK Relacionada:** T1078 - Valid Accounts
- **Descripción del Escenario:** Para salir hacia los distritos norteños, Roshan entrega una moneda de plata del tesoro del Capitán a un guardia endeudado.

---

## 2. Reconocimiento y Detección Temprana (Visión de Águila / Analyzer)
- **Superficie de Exposición:** Interfaces periféricas, puestos de control y canales de memoria vulnerables.
- **Mecanismos de Detección:** Registro de transacciones en la garita fiscal de la puerta.
- **Fallo de Seguridad Primario:** Deficiencias en el aislamiento de privilegios y falta de verificación de integridad en tiempo de ejecución.

---

## 3. Mitigación y Neutralización Quirúrgica (La Hoja Oculta / Countermeasures)
- **Herramienta Defensiva de Los Ocultos:** Roshan bint-La'Ahad / Basim Ibn Ishaq (Operaciones Clandestinas).
- **Protocolo de Contramedida Aplicado:** Inyección de soborno: el guardia valida el paso sin registrar la identidad en el libro de entradas.

---

## 4. Análisis Forense y Reporte de Inteligencia (PDF Intelligence Dossier)
- **Artefactos Forenses e IoCs:** Libro de registro con un hueco de 5 minutos sin asientos.
- **Recomendaciones Tácticas Post-Mortem:** Implementación de segmentación estricta, rotación de claves maestras y descarte de tráfico anómalo.

---

## 5. Especificación de Código Ejecutable (Pruebas con Minitest)
- **Ruta del Módulo de Seguridad:** `lib/alamut_sec/ep08_bab_al_sham_bribe.rb`
- **Ruta de la Suite de Pruebas:** `test/episodios/ep08_test.rb`
*(El test valida el estado de compromiso inicial y la restauración completa tras la mitigación del Credo).*
