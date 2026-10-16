# Roshan bint-La'Ahad & Basim Ibn Ishaq — Assassin's Creed Mirage & Daughter of No One como Ciberseguridad Ofensiva e Inteligencia de Amenazas

> *"Nada es verdad, todo está permitido. Trabajamos en las sombras para servir a la luz."*  
> — Credo de Los Ocultos (Alamut / Terminal Animus v9.8)

¡Bienvenido al Enclave de Alamut y la Matriz de Sincronización del Animus! Este proyecto es un laboratorio de ciberseguridad ofensiva, inteligencia de amenazas (Threat Intelligence) y análisis forense digital estructurado bajo la narrativa canónica de **Assassin's Creed Mirage** y su novela precuela oficial **Daughter of No One** (la génesis y ascenso de la Maestra Roshan bint-La'Ahad escrita por Maria Lewis).

Hemos mapeado exhaustivamente **108 operaciones e incidentes canónicos**:
- **Episodios 01 al 54:** *Saga Daughter of No One* — La juventud de Roshan: desde el matrimonio forzado y asesinato del Capitán del Puerto en Bagdad, su refugio y alfabetización en la Casa de la Sabiduría (Bayt al-Hikma), su captura en las catacumbas de El Cairo, su reclutamiento por el emisario encapuchado de Los Ocultos, la misión del atraco en la Ruta de la Seda junto a la banda de los 8 mercenarios, el motín en las dunas por el artefacto Isu y su consagración en Alamut tras el corte del dedo anular.
- **Episodios 55 al 108:** *Saga Assassin's Creed Mirage* — El ascenso de Basim Ibn Ishaq: de ladrón en Anbar y el robo del disco de memoria Isu en el Palacio de Invierno del Califa, a su entrenamiento en Alamut con Roshan y Fuladh, el regreso a Bagdad para cazar a la Orden de los Antiguos en los cuatro distritos (Harbiyah / Al-Ghul, Abbasiyah / Al-Rabisu, Karkh / Al-Khasib, Ciudad Redonda / Al-Kurh), el asedio a Alamut, el enfrentamiento con Roshan y el despertar de los recuerdos de Loki en el templo precursor subterráneo.

Aquí no hay ficción inejecutable ni texto de adorno: cada operación cuenta con código **Ruby** real en `lib/alamut_sec/` y pruebas automatizadas en **Minitest** en `test/episodios/` que "muerden". Si la vulnerabilidad existe, el test falla; si la contramedida de Los Ocultos es desplegada, el test pasa.

---

## 📚 Tabla de Contenidos

1. [Requisitos Previos](#requisitos-previos)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Interfaz Alamut OS (Web GUI en Puerto 9200)](#interfaz-alamut-os-web-gui)
4. [Ejecución por Consola y Auditoría Global (CLI)](#ejecución-por-consola-cli)
5. [Dossier Maestro de Daughter of No One](#dossier-maestro-de-daughter-of-no-one)
6. [Mapeo de Conceptos (Ejemplos)](#mapeo-de-conceptos-ejemplos)

---

## 🛠 Requisitos Previos

Para ejecutar los escenarios, verificar las contramedidas y levantar la consola gráfica:

- **Ruby** (Versión 3.0 o superior recomendada; probado en Ruby 3.2.11).
- **Bundler** (para la gestión de gemas).

Para instalar las dependencias necesarias:
```bash
bundle install
```

Gemas utilizadas:
- `sinatra` & `rackup` (Backend de la Web GUI).
- `kramdown` (Renderizado de Markdown a HTML en tiempo real).
- `webrick` (Servidor HTTP ligero).
- `minitest` (Motor de pruebas con aserciones rigurosas).
- `prawn` (Compilador de informes de inteligencia de amenazas en PDF).

---

## 📁 Estructura del Proyecto

El repositorio está estructurado para separar el canon narrativo, la arquitectura de seguridad y las interfaces:

```text
/
├── bin/
│   ├── alamut                         # Servidor Web GUI (Alamut OS v9.8 / Animus Matrix).
│   └── global_audit                   # Auditor interactivo de los 108 sectores por consola.
├── prompts/
│   ├── 00_SESION_MAESTRA.md           # Constitución del proyecto, doctrina y reglas de juego.
│   ├── 00_DAUGHTER_OF_NO_ONE_PROMPTS_MASTER.md # Dossier exhaustivo de Daughter of No One (34 grandes ops).
│   ├── 01_PLANTILLA_EPISODIO.md       # Plantilla estándar operativa en la voz de Roshan.
│   ├── ESTADO.txt                     # Seguimiento de avance y sincronización del Animus.
│   └── ep01_prompt.md a ep108_prompt.md # 108 Reportes individuales en Markdown.
├── lib/
│   ├── alamut_sec/                    # Módulos Ruby de amenazas y contramedidas (ep01 a ep108).
│   └── alamut_web/                    # Aplicación Sinatra, vistas ERB, estilos CSS y generadores PDF:
│       ├── app.rb                     # Controlador y rutas API.
│       ├── episode_report_generator.rb# Generador Prawn de reportes de 12 páginas por episodio.
│       ├── system_report_generator.rb # Generador Prawn del informe global de 108 sectores.
│       ├── public/css/style.css       # Estilo Animus Cyan / Oro Abasí / Carmesí de Los Ocultos.
│       └── views/dashboard.erb        # Consola gráfica interactiva.
├── test/
│   └── episodios/                     # 108 suites Minitest con verificación de estado.
│       └── ep01_test.rb a ep108_test.rb
├── generate_episodes.rb               # Generador maestro de la suite completa.
├── Gemfile                            # Especificación de dependencias.
└── README.md                          # Guía integral del proyecto.
```

---

## 💻 Interfaz Alamut OS (Web GUI)

Hemos diseñado una interfaz gráfica inspirada en la paleta visual del Animus y los archivos secretos de Alamut (cian cuántico `#00e5ff`, oro del desierto abasí `#d4af37`, carmesí de Los Ocultos `#c62828` y fondo obsidiana `#0a0e14`).

### Iniciar el servidor
Para arrancar el panel de control web, ejecuta:

```bash
./bin/alamut
# o alternativamente:
ruby bin/alamut
```

El servidor local se levantará en el **puerto 9200**.  
Abre tu navegador web y entra a:  
👉 **http://localhost:9200**

### Funciones de la Interfaz:
1. **Navegación Visual de 108 Operaciones:** La barra lateral divide limpiamente las dos sagas:
   - *Saga I: Daughter of No One (Episodios 01 al 54)*.
   - *Saga II: AC Mirage (Episodios 55 al 108)*.
2. **Dossier Maestro de Daughter of No One:** Botón de acceso directo para renderizar la memoria histórica completa de los 7 actos de la novela precuela.
3. **Reportes de Vulnerabilidad en Vivo:** Visualización del incidente traducido de Markdown a HTML con metadatos MITRE ATT&CK.
4. **Terminal Minitest Integrada:** Botón **"EJECUTAR CONTRAMEDIDA"** que corre la suite Minitest del sector seleccionado en tiempo real, mostrando stdout con formato de terminal militar.
5. **Exportación de Dossier PDF:** Descarga directa de informes de inteligencia de 12 páginas compilados en caliente con capturas simuladas PCAP, volcados de memoria y certificación firmada.
6. **Auditoría Global PDF:** Genera un consolidado de los 108 sectores en un solo documento.

---

## 🚀 Ejecución por Consola (CLI)

Si prefieres auditar el sistema directamente desde tu terminal Unix (macOS o Linux):

### 1. Auditoría Interactiva Global (108 Sectores)
Ejecuta el script interactivo que analiza sector por sector con animación y colores:
```bash
./bin/global_audit
```

### 2. Ejecutar un Solo Episodio con Salida Verbosa
```bash
ruby -I lib test/episodios/ep01_test.rb -v
ruby -I lib test/episodios/ep55_test.rb -v
ruby -I lib test/episodios/ep108_test.rb -v
```

### 3. Ejecución Masiva de Todos los Tests
```bash
for f in test/episodios/ep*_test.rb; do ruby -I lib $f; done
```

---

## 📜 Dossier Maestro de Daughter of No One

En `prompts/00_DAUGHTER_OF_NO_ONE_PROMPTS_MASTER.md` se encuentra el documento rector solicitado que traduce la totalidad de la novela precuela canónica de Roshan:
- **Acto I:** Las Cadenas del Puerto (Bagdad, 819 d.C. — La fuga con la aguja de cobre).
- **Acto II:** El Santuario del Conocimiento (La Casa de la Sabiduría con Hunayn ibn Ishaq).
- **Acto III:** La Oubliette de El Cairo (Las mazmorras romanas y el pacto con el encapuchado).
- **Acto IV:** El Sindicato de los Ocho (La banda de forajidos: Zabidas, Tariq, Haytham, Dunya, Faruq, Layla, Malik y Roshan).
- **Acto V:** La Interceptación en la Ruta de la Seda (El asalto al convoy imperial y la extracción de la caja Isu sellada con oricalco).
- **Acto VI:** La Masacre en las Dunas y la Traición Interna (El motín de los mercenarios y la neutralización metódica de los siete traidores).
- **Acto VII:** El Ascenso a Alamut y el Bautismo de Sombras (El juicio de Rayhan, la amputación del anular y el renacimiento como Roshan bint-La'Ahad).

---

## 🔍 Mapeo de Conceptos (Ejemplos)

- **Episodio 01 (El Capitán del Puerto):** *Privilege Escalation.* Roshan cosecha privilegios del llavero maestro clonando las muescas en arcilla blanda durante la somnolencia del objetivo.
- **Episodio 02 (La Aguja de Cobre):** *Targeted Zero-Day Kernel Kill (SIGKILL).* Neutralización del proceso raíz suprimiendo las emisiones acústicas de alerta.
- **Episodio 13 (Esteganografía Aristotélica):** *Covert Channel Data Exfiltration.* Mensajería encubierta en los márgenes de códices de la Casa de la Sabiduría con tintas térmicas.
- **Episodio 20 (La Oubliette de El Cairo):** *Zero Trust Sandboxing.* Aislamiento total en celda subterránea y preservación de la clave privada mediante algoritmos de compartición mental de secretos de Shamir.
- **Episodio 44 (La Caja Marcada con Oricalco):** *Hardware Security Module (HSM).* Manipulación de blindajes precursores para evitar la activación del circuito de autodestrucción.
- **Episodio 58 (El Disco de Memoria Isu en Anbar):** *Memory Decryption & Glitch Analysis.* Basim y Nehal extraen bloques cifrados de la Primera Civilización detonando un desbordamiento de búfer neural.
- **Episodio 77 (Asesinato de Al-Ghul en el Caravasar):** *Targeted Memory Termination.* Infiltración perimetral y purga del proceso de trata de esclavos de la Orden de los Antiguos.
- **Episodio 108 (El Espejo de Loki):** *Neural Memory Integration & Transcendence.* Integración de los recuerdos reprimidos de Loki y ascensión definitiva como Maestro de Los Ocultos.
