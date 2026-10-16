# Roshan bint-La'Ahad & Basim Ibn Ishaq — Assassin's Creed Mirage & Daughter of No One como Ciberseguridad

Laboratorio de ciberseguridad ofensiva, contrainteligencia y análisis forense digital basado en el canon de *Assassin's Creed Mirage* y la novela precuela *Daughter of No One* (108 operaciones e incidentes canónicos).

## Arranque (Obligatorio)

Antes de escribir código, ejecutar tests o generar prosa operativa, lee en este orden estricto:

1. `prompts/00_SESION_MAESTRA.md` — Constitución del proyecto, doctrina de Los Ocultos y cómo mapear incidentes.
2. `prompts/00_DAUGHTER_OF_NO_ONE_PROMPTS_MASTER.md` — Dossier canónico maestro de Roshan con sus 34 grandes operaciones y actos I al VII.
3. `prompts/ESTADO.txt` — Estado de sincronización actual del Animus y sector activo.
4. `prompts/01_PLANTILLA_EPISODIO.md` — Protocolo operativo reutilizable bajo la voz de la Maestra Roshan.
5. El archivo específico `prompts/ep[XX]_prompt.md` que indique `ESTADO.txt` o que solicite el operador.

Si el usuario pega la plantilla con un episodio, obedece las directrices y actualiza `prompts/ESTADO.txt`. No pidas de nuevo el prompt maestro.

## Reglas Operativas Estrictas

- **Canon Inviolable:**
  - *Daughter of No One* (819–824 d.C., Eps 01 a 54): Roshan, el Capitán del Puerto, la Casa de la Sabiduría (Hunayn ibn Ishaq), las catacumbas de El Cairo, la banda de 8 forajidos (Zabidas, Tariq, Haytham, Dunya, Faruq, Layla, Malik), el convoy de la Ruta de la Seda, la reliquia Isu en la caja de oricalco, la masacre en las dunas y el juramento en Alamut ante Rayhan.
  - *Assassin's Creed Mirage* (861 d.C., Eps 55 a 108): Basim Ibn Ishaq, Nehal, Anbar, el Palacio de Invierno del Califa Al-Mutawakkil, entrenamiento en Alamut (Fuladh, Rebekah, Tabid, Rayhan), la cacería de la Orden de los Antiguos en Bagdad (Al-Ghul Mas'ood, Al-Rabisu Zahra, Al-Khasib Ning, Al-Kurh Wasif, Al-Pairika Qabiha), el asedio de Alamut, el duelo con Roshan y el despertar de Loki en la cripta precursora.
- **Interfaz Gráfica (Web GUI):** Alamut OS v9.8 / Animus Matrix en puerto 9200 con paleta cian Animus (`#00e5ff`), oro abasí (`#d4af37`), carmesí de Los Ocultos (`#c62828`) y fondo obsidiana (`#0a0e14`).
- **Backend:** Ruby 3.x con Sinatra y generación de reportes en PDF mediante Prawn.
- **Idioma:** Español en documentación, prompts, análisis y reportes. Identificadores de código en inglés idiomático.
- **Cero Cosplay Inejecutable:** Prohibido escribir código decorativo (nada de meros `puts "Hoja Oculta"`). Los tests de Minitest deben morder, verificando la vulnerabilidad inicial y la contramedida aplicada.
- **Actualización:** Tras cada operación o modificación, mantener actualizado `prompts/ESTADO.txt`.
