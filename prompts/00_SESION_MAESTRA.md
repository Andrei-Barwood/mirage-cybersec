# ALAMUT OS & ANIMUS MATRIX :: SESIÓN MAESTRA (CONSTITUCIÓN DEL PROYECTO)

> *"Nada es verdad, todo está permitido. Trabajamos en las sombras para servir a la luz."*  
> — Credo de Los Ocultos (Alamut, siglo IX d.C. / Terminal Animus v9.8)

---

## 1. Misión, Visión y Marco Doctrinal

Este repositorio es un laboratorio de ciberseguridad ofensiva, inteligencia de amenazas (Threat Intelligence) y análisis forense digital estructurado bajo la narrativa canónica de **Assassin's Creed Mirage** y su precuela oficial **Daughter of No One** (la biografía y génesis de la Maestra Roshan bint-La'Ahad escrita por Maria Lewis).

Cada episodio, memoria genética e incursión clandestina representa un incidente de seguridad digital de alto impacto en el mundo contemporáneo. Las fuerzas hostiles —el tiránico Capitán del Puerto, la Orden de los Antiguos (The Order of the Ancients), la Guardia del Califato corrupta, mercenarios turcos en Samarra y mercenarios traidores en la Ruta de la Seda— representan actores de amenazas avanzadas persistentes (APT), vulnerabilidades zero-day, ataques a la cadena de suministro, ransomware, envenenamiento de modelos y desbordamientos de búfer.

Los Ocultos (The Hidden Ones) operan como una agencia de inteligencia y Red Team de élite. Roshan y Basim encarnan los analistas de respuesta a incidentes, cazadores de amenazas (Threat Hunters) e ingenieros de contramedidas que ejecutan mitigaciones quirúrgicas en código **Ruby** real, validado mediante baterías de pruebas automatizadas con **Minitest** cuyos tests muerden: si la contramedida no neutraliza la amenaza, la prueba falla; si el exploit es aislado y el perímetro asegurado, el test pasa.

---

## 2. Reglas Estrictas del Proyecto (El "Bite" del Backend)

1. **Cero Cosplay Inejecutable:**
   Queda terminantemente prohibido escribir código placebo o decorativo (como meros `puts "Hoja Oculta"` sin lógica). Cada clase de `lib/alamut_sec/` debe implementar estados mutables, buffers de memoria, árboles de decisiones criptográficas, filtros de red, firmas de malware o contramedidas verificables.
2. **Tests que Muerden (Execution Assurance):**
   Cada episodio cuenta con su archivo correspondiente en `test/episodios/ep[XX]_test.rb`. La suite debe validar dos fases críticas:
   - **Fase de Explotación / Falla:** Demostrar que en ausencia de la contramedida de Los Ocultos, el sistema colapsa (Denegación de servicio, filtración de memoria, robo de clave, desincronización del Animus o escalado de privilegios no autorizado).
   - **Fase de Mitigación / Éxito:** Validar que al invocar la técnica de Roshan o Basim, la amenaza queda contenida, los registros forenses se purgan y el estado del sistema vuelve a ser seguro.
3. **Canon Inviolable de Assassin's Creed:**
   - **Daughter of No One (819 d.C. – 824 d.C.):** La juventud de Roshan: desde el matrimonio forzado y asesinato del Capitán del Puerto en Bagdad, su refugio y alfabetización en la Casa de la Sabiduría (Bayt al-Hikma) con Hunayn ibn Ishaq, su captura y encarcelamiento en las catacumbas de El Cairo, su reclutamiento por el enviado encapuchado de Los Ocultos, la misión del atraco en la Ruta de la Seda junto a la banda de los 8 mercenarios forajidos, la traición por la reliquia de los Isu y su ascenso a Alamut bajo el mentor Rayhan.
   - **Mirage (861 d.C.):** Basim Ibn Ishaq en Anbar, el robo en el Palacio de Invierno del Califa Al-Mutawakkil, la masacre de los ladrones, la tutela de Roshan en Alamut, el rito de corte del anular, la infiltración en los cuatro distritos de Bagdad (Harbiyah, Abbasiyah, Karkh, Ciudad Redonda), la eliminación de los líderes enmascarados de la Orden (Al-Ghul, Al-Khasib Ning, Al-Rabisu Zahra, Al-Kurh Wasiq, y la líder suprema Al-Pairika / Qabiha), la batalla final contra Roshan y el despertar de los recuerdos Isu de Loki en la cripta subterránea de Alamut.
4. **Arquitectura y Lenguaje:**
   - Documentación, prompts y reportes en **Español riquísimo, detallado y técnico**.
   - Clases, métodos e identificadores de código en **Inglés** idiomático según convenciones Ruby.
   - Informes técnicos exportables en **PDF** (usando Prawn) con diseño de inteligencia militar y analítica del Animus.
   - Interfaz web interactiva en **Sinatra** (Alamut OS / Animus Terminal en puerto 9200) con estética oscura, toques cian Animus, dorado del desierto abasí y carmesí de Los Ocultos.

---

## 3. Topología del Sistema (Alamut OS v9.8)

El ecosistema operativo se divide en cuatro capas interconectadas:

- **Animus Telemetry & Target Vector (Motif):**  
  Define el actor hostil (miembro de la Orden o amenaza de la época), su comportamiento técnico y su correlación con la taxonomía MITRE ATT&CK (ej. T1059 Command and Scripting Interpreter, T1078 Valid Accounts, T1190 Exploit Public-Facing Application).
- **The Eagle's Vision / Reconnaissance (Analyzer):**  
  Herramientas de auditoría, rastreo de huellas, detección de intrusiones (IDS) y telemetría de sockets simulada.
- **The Hidden Blade / Countermeasures (Evolution/Mitigation):**  
  Implementación en Ruby de la respuesta al incidente (microsegmentación, sandboxing, anulación criptográfica, rotación de claves efímeras, sanitización de memoria).
- **Alamut Verification Suite (Prodigious Tests):**  
  Pruebas automatizadas en Minitest que certifican la integridad del sistema.

---

## 4. Protocolo de Ejecución de Episodios

Cada episodio se gestiona siguiendo el ciclo:
1. Lectura del requerimiento y contexto en `prompts/ep[XX]_prompt.md`.
2. Desarrollo de la lógica en `lib/alamut_sec/ep[XX]_[slug].rb`.
3. Creación y ejecución de la prueba en `test/episodios/ep[XX]_test.rb`.
4. Registro de resultados en `prompts/ESTADO.txt`.
5. Verificación tanto en consola interactiva (`bin/global_audit`) como en la plataforma web (`bin/alamut`).
