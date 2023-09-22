extends Node

export var definiciones = [
####### TRES LETRAS ######
"Programa informático que realiza tareas automatizadas específicas y, generalmente, repetitivas en una red. Es una abreviatura de la palabra robot.", # 0
"En informática, un bug es un error de código en un programa informático. La aplicación del concepto a la computación se ha atribuido a la pionera de programación, Grace Hopper.", # 1
"En los videojuegos, se llama HUD (Head-Up Display, también conocido como barra de estado) a la información que en todo momento se muestra en pantalla durante la partida.", # 2
"Un mob es una criatura controlada por la máquina, un personaje no jugador común en los MMORPG o MUD. Su nombre viene del inglés mobile.", # 3
"En el mundo de los videojuegos, un mod es una extensión del software que modifica el contenido original de un videojuego, pudiendo aportar nuevo contenido, características y/o correcciones.", # 4
"RPG (role-playing game o videojuego de rol) es un género de videojuegos donde el jugador controla las acciones de un personaje inmerso en algún detallado mundo.", # 5
"Un Game Design Document o simplemente GDD es un documento vivo de diseño cuyo contenido es altamente descriptivo acerca de un videojuego.", # 6
"En informática y otras disciplinas, unidad mínima de información, que puede tener solo dos valores (cero o uno).", # 7
"Los fotogramas por segundo o FPS es la frecuencia a la cual un dispositivo muestra imágenes llamadas fotogramas o cuadros.", # 8
"Grand Theft Auto es una serie de videojuegos creada por David Jones y por los hermanos Sam y Dan Houser.", # 9
"RGB o RVA es la composición del color en términos de la intensidad de los colores primarios de la luz (Rojo, Verde y Azul).", # 10
"Es un formato de imagen digital que se utiliza ampliamente en la web y en otros medios digitales.", # 11
"World of Warcraft es un videojuego de rol multijugador masivo en línea desarrollado por Blizzard Entertainment.", # 12
"Es un formato de archivo de imagen fotográfica muy popular en el entorno digital.", # 13
"Un personaje no jugador es un término a menudo abreviado con la sigla PNJ (o NPC por su sigla en inglés, de non playable character). Es generalmente parte del programa, y no controlado por un humano. ", # 14
###### CUATRO LETRAS ######
"En el contexto de desarrollo de software, una version alfa es una etapa temprana de desarrollo en la que el software aún se encuentra en una fase muy experimental.", # 15
"En el contexto del desarrollo de software, una versión beta es una etapa posterior al desarrollo alfa en la que el software se considera lo suficientemente completo como para ser probado por un grupo más amplio de usuarios.", # 16
"Un clan en videojuegos es un grupo organizado y formal de jugadores que se unen con el propósito de colaborar y competir juntos en un juego en línea.", # 17
"Una demo, en el contexto de la industria del software y los videojuegos, se refiere a una versión reducida y generalmente gratuita de un producto que se proporciona a los usuarios con el propósito de mostrar sus características, funcionalidades y calidad.", # 18
"Es una acción o proceso de manipulación o modificación no autorizada de un sistema informático, software, hardware o red con el propósito de obtener acceso, control o funcionalidad no previstos originalmente por los creadores del sistema.", # 19
"Es una popular franquicia de videojuegos de ciencia ficción desarrollada por Bungie (hasta 2010) y continuada por 343 Industries en colaboración con Xbox Game Studios.", # 20
"Un juego idle, también conocido como juego de inactividad, es un tipo de videojuego que se caracteriza por permitir a los jugadores progresar y obtener recompensas incluso cuando no están activamente jugando o interactuando de manera constante.", # 21
"En los videojuegos, un jefe (también conocido como boss en inglés) se refiere a un personaje o enemigo especialmente poderoso y desafiante que los jugadores deben enfrentar al final de un nivel, etapa o sección del juego.", # 22
"El loot, también conocido como botín en algunos casos, se refiere a los objetos, equipamiento, recursos o recompensas que los jugadores obtienen al derrotar enemigos, completar misiones o explorar el mundo dentro de un videojuego.", # 23
"El lore en videojuegos se refiere al conjunto de narrativa, historia, mitología, trasfondo y detalles del mundo ficticio en el que se desarrolla un juego.", # 24
"Un MOBA, que significa Multiplayer Online Battle Arena en inglés, es un género de videojuegos competitivos en línea en el que dos equipos de jugadores compiten para lograr objetivos en un campo de batalla virtual.", # 25
"Un mapa en videojuegos se refiere a un entorno virtual o un área de juego que los jugadores exploran y navegan durante su experiencia de juego. ", # 26
"Noob es una jerga o término coloquial en los videojuegos que se utiliza para referirse a un jugador novato o principiante, especialmente aquellos que muestran falta de experiencia, habilidad o conocimiento en un juego en particular.", # 27
"Pong es uno de los videojuegos más icónicos y simples de la historia de los videojuegos. Fue desarrollado por Atari y lanzado en 1972 como una de las primeras recreativas arcade comerciales.", # 28
"Sega es una empresa japonesa de videojuegos y hardware de entretenimiento fundada en 1960. Su mascota insignia es Sonic", # 29
###### CINCO LETRAS ######
"En el desarrollo de videojuegos y software, un asset (activo o recurso) se refiere a cualquier elemento o componente utilizado en la creación y funcionamiento de una aplicación.", # 30
"Es un videojuego de género MOBA (Multiplayer Online Battle Arena) lanzado en 2014 y desarrollado y publicado por Hi-Rez Studios.", # 31
"Un bonus en videojuegos se refiere a un elemento adicional o una recompensa que los jugadores pueden obtener dentro del juego como resultado de su desempeño o de la realización de ciertas acciones específicas.", # 32
"Un combo en el contexto de los videojuegos se refiere a una secuencia continua de movimientos, acciones o ataques realizados por un jugador en rápida sucesión y con precisión en un juego.", # 33
"En el contexto de los videojuegos y la animación, un frame se refiere a una imagen individual en una secuencia de imágenes que, cuando se reproducen en rápida sucesión, crean la ilusión de movimiento.", # 34
"Un gamer es una persona que juega videojuegos como una forma de entretenimiento y pasatiempo regular. ", # 35
"Indie se utiliza para referirse a trabajos creativos producidos por individuos o pequeños equipos que operan de manera independiente, sin el respaldo o el apoyo financiero de grandes empresas o sellos discográficos.", # 36
"En el contexto de los videojuegos y las aplicaciones en línea, un lobby se refiere a una sala virtual o un espacio donde los jugadores pueden reunirse antes de comenzar una partida o una sesión de juego en línea.", # 37
"Mario es un icónico personaje de videojuegos creado por Nintendo. Ha sido el protagonista de una serie de videojuegos populares y ha aparecido en más de 200 títulos de Nintendo y otros medios a lo largo de las décadas.", # 38
"En el contexto de los videojuegos y otros medios interactivos, un nivel se refiere a una sección o etapa específica en un juego que presenta sus propios desafíos, obstáculos, entornos y objetivos únicos.", # 39
"Un píxel es la unidad más pequeña de una imagen digital o gráficos en pantalla. El término píxel es una abreviatura de elemento de imagen (del inglés picture element).", # 40
"En el contexto de los videojuegos, retro se refiere a juegos que incorporan deliberadamente elementos visuales, estilos de juego y sonidos que eran comunes en décadas anteriores, como los años 80 y 90.", # 41
"Sonic the Hedgehog, comúnmente conocido como Sonic, es un personaje de videojuegos y una franquicia creada por SEGA. Fue un símbolo importante en la competencia de videojuegos entre SEGA y Nintendo en los años 90.", # 42
"Zelda es una franquicia de videojuegos creada por la compañía japonesa Nintendo. La serie es conocida por su enfoque en la exploración, la resolución de rompecabezas y la narrativa épica.", # 43
"En el contexto de la programación y el desarrollo de software, debug es un término que se utiliza para referirse al proceso de identificar, analizar y corregir errores o bugs en un programa de computadora.", # 44
###### SEIS LETRAS ######
"Una arcade es una máquina de entretenimiento que utiliza fichas para su funcionamiento. Las arcades han sido una parte importante de la cultura de los videojuegos y el entretenimiento desde la década de 1970.", # 45
"El término casual se utiliza en el contexto de los videojuegos para describir un estilo de juego que es accesible, sencillo de entender y jugar, y que no requiere un compromiso de tiempo significativo o habilidades de juego avanzadas.", # 46
"Un motor o engine se refiere a un conjunto de software y herramientas que permiten a los desarrolladores crear y diseñar juegos y aplicaciones de manera más eficiente y efectiva.", # 47
"Una hitbox (caja de impacto, en español) se refiere a un área invisible o un volumen en forma de caja que se asocia a un objeto o personaje y se utiliza para determinar las colisiones y las interacciones entre objetos en el mundo.", # 48
"Kratos es un personaje ficticio de los videojuegos y el protagonista principal de la serie de juegos God of War, desarrollada por Santa Monica Studio y publicada por Sony Interactive Entertainment.", # 49
"En el contexto de los videojuegos y la programación en general, un objeto se refiere a una instancia concreta de una clase o un tipo de dato que encapsula datos y funcionalidad relacionada en un programa.", # 50
"Un parche se refiere a una actualización o modificación que se aplica a un programa existente con el propósito de corregir errores, mejorar el rendimiento, agregar nuevas características o realizar ajustes en el software.", # 51
"Pac-Man es un icónico videojuego de arcade creado por el diseñador de videojuegos japonés Toru Iwatani y lanzado por primera vez en 1980 por la empresa Namco.", # 52
"Portal es un videojuego de rompecabezas en primera persona desarrollado y publicado por Valve Corporation. Fue lanzado por primera vez como parte del paquete The Orange Box en 2007 y, posteriormente, como un título independiente.", # 53
"Un shader (en español, sombreador) es un programa de computadora especializado utilizado en gráficos por computadora y en el desarrollo de videojuegos para controlar la apariencia visual de objetos y superficies en un entorno 3D.", # 54
"El sigilo en el contexto de los videojuegos se refiere a un estilo de juego en el que el jugador debe evitar ser detectado o atrapado por enemigos u obstáculos al moverse a través de un nivel o escenario.", # 55
"Un tester (o probador) se refiere a una persona que desempeña el papel de probar y evaluar un videojuego en desarrollo para identificar errores, problemas de jugabilidad y otros problemas antes de su lanzamiento al público.", # 56
"Tetris es uno de los videojuegos más icónicos y populares de la historia de los videojuegos. Fue creado por el diseñador de videojuegos ruso Alexey Pajitnov y lanzado por primera vez en 1984.", # 57
"Un glitch en el contexto de los videojuegos se refiere a un error o problema inesperado en el funcionamiento de un juego que produce resultados no deseados o comportamientos anómalos.", # 58
"Un hotfix es una actualización rápida y específica de un software o un videojuego que se implementa para solucionar un problema crítico o una vulnerabilidad de seguridad de manera inmediata.", # 59
###### SIETE LETRAS ######
"Se refiere a la igualdad o equilibrio en términos de jugabilidad y competitividad. El equilibrio significa que todas las opciones, personajes, estrategias o elementos disponibles son justos y tienen una oportunidad razonable de éxito.", # 60
"Se refiere a un dispositivo de hardware dedicado diseñado específicamente para jugar videojuegos. Las consolas de videojuegos son sistemas de entretenimiento doméstico que ofrecen una amplia variedad de juegos", # 61
"Fallout es una conocida serie de videojuegos de rol y acción desarrollada por la compañía de videojuegos Bethesda Game Studios. La serie se caracteriza por su ambientación posapocalíptica, su narrativa rica y su mundo abierto.", # 62
"Es una icónica serie de videojuegos de acción y aventuras desarrollada por la compañía japonesa Nintendo. La serie se centra en las aventuras de Samus Aran, una cazarrecompensas galáctica.", # 63
"Es una serie de videojuegos de acción y plataformas desarrollada por Capcom. La serie es conocida por su jugabilidad clásica de desplazamiento lateral, la capacidad de Mega Man para adquirir armas y habilidades de los jefes derrotados.", # 64
"El término mapeado en el contexto de los videojuegos se refiere a la creación y diseño de mapas, niveles o escenarios jugables en un videojuego.", # 65
"Es una franquicia de medios de entretenimiento  propiedad de la empresa japonesa Nintendo, junto con Game Freak y Creatures Inc. Ha sido un fenómeno cultural desde su debut en la década de 1990. ", # 66
"Un ragdoll se refiere a una técnica de animación utilizada para simular el movimiento realista y la física de un personaje o un objeto cuando interactúa con su entorno o recibe fuerzas externas. ", # 67
"Son elementos gráficos bidimensionales que se utilizan en los videojuegos y la animación por computadora. Estos gráficos pueden representar personajes, objetos, fondos y otros elementos visuales dentro del juego.", # 68
"Es un término que se utiliza comúnmente en los videojuegos y se refiere a un recurso o atributo que representa la resistencia o la energía de un personaje controlado por el jugador.", # 69
"En el contexto de los videojuegos y la animación por computadora, una textura se refiere a una imagen bidimensional que se aplica a la superficie de un modelo tridimensional para darle detalles visuales y realismo.", # 70
"Se utiliza en el contexto de los videojuegos para describir un estilo de juego que ofrece a los jugadores una gran libertad y autonomía para explorar, interactuar y tomar decisiones en un mundo virtual sin restricciones lineales.", # 71
"Es un popular videojuego en línea desarrollado y publicado por Epic Games. Fue lanzado por primera vez en 2017 y ha ganado una inmensa popularidad en todo el mundo, convirtiéndose en un fenómeno cultural y un título influyente.", # 72
"En el contexto de los videojuegos y la informática se refiere a una persona que utiliza un sistema o una plataforma para interactuar con un software, una aplicación o un servicio digital.", # 73
"En el contexto de la programación y la informática, una función se refiere a un bloque de código que realiza una tarea específica o una serie de tareas relacionadas.", # 74
###### OCHO LETRAS ######
"Es un término utilizado en el ámbito de los videojuegos y los juegos en línea para describir a un tipo de jugador que se enfoca en alcanzar objetivos específicos dentro del juego.", # 75
"Un atributo se refiere a una característica o propiedad específica de un personaje, objeto, entidad o elemento dentro del juego.", # 76
"En el contexto de los videojuegos, un cartucho es una unidad de almacenamiento que contiene los datos y el software necesario para ejecutar un juego en una consola de videojuegos específica.", # 77
"Es un programa o dispositivo que imita y ejecuta el software y el hardware de otro sistema. Los emuladores son populares en la comunidad de juegos retro y en el desarrollo de software histórico. ", # 78
"Es un término utilizado en la industria de los videojuegos para describir la experiencia general de jugar un juego, incluyendo la mecánica del juego, la jugabilidad y la interacción del jugador con el mundo virtual del juego.", # 79
"Se refiere a la narrativa o trama que se desarrolla dentro del juego. Es la secuencia de eventos, personajes y situaciones que conforman la experiencia narrativa del juego.", # 80
"Es un dispositivo de entrada que se utiliza comúnmente en videojuegos y aplicaciones de control para manipular la posición o los movimientos de un objeto en una pantalla o en un entorno virtual.", # 81
"Es un término que se utiliza comúnmente en los juegos de rol y en los videojuegos para referirse a un área subterránea, generalmente un lugar oscuro, peligroso y lleno de desafíos, monstruos y tesoros.", # 82
"Es un término que se utiliza en el desarrollo de software para referirse al proceso de corregir o actualizar un programa o sistema operativo mediante la aplicación de un parche o actualización de software.", # 83
"En los videojuegos y en la cultura de los juegos de rol, una poción es un elemento consumible que generalmente se utiliza para restaurar la salud, la energía o proporcionar algún otro tipo de beneficio temporal.", # 84
"Es un conjunto de instrucciones, explicaciones o lecciones diseñadas para enseñar a alguien cómo realizar una tarea, operar un dispositivo, usar un software o jugar un juego.", # 85
"Es un fenómeno visual que se produce cuando los objetos cercanos a un observador parecen moverse más rápido o en una dirección diferente que los objetos más distantes debido a un cambio en la perspectiva.", # 86
"Es una práctica en la que los jugadores intentan completar un videojuego lo más rápido posible, siguiendo una serie de reglas específicas.", # 87
"Se refiere al momento en el que dos objetos virtuales, como personajes, elementos del entorno o cualquier otro tipo de entidad en un mundo digital, se superponen o interactúan en el espacio tridimensional del juego. ", # 88
"Se refiere al retraso o demora experimentado en la transmisión de datos o la ejecución de una acción. Es el tiempo que transcurre entre la solicitud de una acción y la respuesta o ejecución real de esa acción.", # 89
###### NUEVE LETRAS ######
"Se refiere a la estructura y presentación de una historia o relato, ya sea en forma de texto, película, obra de teatro, videojuego o cualquier otro medio de comunicación.", # 90
"Es un videojuego de estrategia en tiempo real (RTS, por sus siglas en inglés) desarrollado y publicado por Blizzard Entertainment. Fue lanzado inicialmente en marzo de 1998 y se convirtió en un título icónico.", # 91
"Las habilidades se refieren a las destrezas y capacidades que un jugador desarrolla para jugar y tener éxito en un juego en particular.", # 92
"Es un popular videojuego de mundo abierto desarrollado por Mojang Studios, una subsidiaria de Microsoft. Fue lanzado inicialmente en 2011 y ha ganado una inmensa base de fanáticos y una influencia desde entonces.", # 93
"En el contexto de los videojuegos y la narrativa, un personaje se refiere a un ser ficticio o figura en el juego que los jugadores pueden controlar, interactuar o seguir a lo largo de la historia.", # 94
"En el contexto de los videojuegos y la industria del entretenimiento, la audiencia se refiere al grupo de personas a las que se destina un producto o contenido en particular.", # 95
"Es uno de los primeros videojuegos de la historia y un título icónico en la industria del videojuego. Fue creado por Steve Russell en el Instituto de Tecnología de Massachusetts (MIT) en 1962", # 96
"Es un proceso mediante el cual se crea la ilusión de movimiento al mostrar una serie de imágenes fijas de manera rápida y secuencial.", # 97
"Es un videojuego de disparos en primera persona (FPS) desarrollado y publicado por Blizzard Entertainment. Fue lanzado en mayo de 2016 y se ha convertido en uno de los juegos más populares en su género.", # 98
"Es un videojuego de disparos en primera persona desarrollado por Rare y publicado por Nintendo. Fue lanzado originalmente para la consola Nintendo 64 en 1997.", # 99
"Es una exitosa serie de videojuegos de aventuras desarrollada por Naughty Dog y publicada por Sony Interactive Entertainment.", # 100
"En un videojuego se refiere a un ente digital o ficticio que los jugadores pueden controlar, interactuar o encontrarse dentro del mundo del juego.", # 101
"La monetización se refiere a cómo se generan ingresos a partir de un juego, una aplicación u otro contenido interactivo.", # 102
"Es un profesional que se dedica a escribir guiones, textos, diálogos y narrativas para una variedad de medios, incluyendo películas, programas de televisión, videojuegos, obras de teatro, series web y más.", # 103
"Es un término que se utiliza para describir un pequeño juego o actividad que forma parte de un juego o una aplicación más grande. Estos juegos más pequeños tienen reglas y mecánicas simples.", # 104
###### DIEZ LETRAS ######
"Se utiliza en el mundo de los videojuegos y la programación para referirse a la generación de contenido de manera algorítmica o basada en procedimientos en lugar de crearlo manualmente. ", # 105
"Es un tipo de entretenimiento interactivo que se juega a través de una computadora, consola de videojuegos, dispositivo móvil u otra plataforma digital.", # 106
"En el contexto de los videojuegos se refiere a secuencias de video pregrabadas o animaciones generadas por computadora que se utilizan para contar la historia del juego o para representar eventos clave en la narrativa.", # 107
"En el contexto de los videojuegos se refiere a una lista o conjunto de objetos, recursos, equipo o elementos que un jugador o personaje puede recoger, almacenar, llevar consigo y gestionar durante el transcurso del juego.", # 108
"En el contexto de los videojuegos y la programación, un directorio se refiere a una carpeta o ubicación en un sistema de archivos donde se almacenan archivos y otros directorios.", # 109
"Es un conjunto ordenado y finito de instrucciones o pasos que se siguen para realizar una tarea o resolver un problema específico.", # 110
"Se refiere a la planificación y toma de decisiones que un jugador debe realizar para alcanzar objetivos específicos dentro del juego.", # 111
"En el contexto de los videojuegos se refiere a la recreación de situaciones, eventos, procesos o entornos del mundo real o ficticio en un entorno virtual.", # 112
"Se refiere a un conjunto de código preescrito, funciones y recursos que los desarrolladores pueden utilizar para agilizar el proceso de desarrollo de software.", # 113
"Se refieren a la detección y respuesta de interacciones entre objetos en el mundo del juego. Las colisiones son fundamentales para crear la ilusión de interacción y física en los videojuegos.", # 114
###### ONCE LETRAS ######
"Es una popular serie de videojuegos creada por Konami en 1986. La serie se centra en la lucha contra seres sobrenaturales, en particular vampiros, y generalmente presenta elementos de acción, plataformas y aventuras.", # 115
"En el contexto de los videojuegos se refiere a un modo de juego en el que dos o más jugadores trabajan juntos para alcanzar un objetivo común o superar desafíos dentro del juego.", # 116
"Se refiere a un sistema o mecánica que rastrea y recompensa el progreso de un jugador a medida que juega el juego.", # 117
"En el contexto de los videojuegos se refiere a la experiencia interactiva proporcionada por un juego y cómo los jugadores interactúan con él.", # 118
"Son videojuegos o programas de software diseñados para recrear situaciones, entornos o experiencias de la vida real de manera realista o semirrealista.", # 119
"Es un profesional de la informática que se dedica a escribir, desarrollar, mantener y depurar código de programación de software.", # 120
"Se refiere a la combinación de hardware y software en la que un videojuego o una aplicación se ejecuta o es compatible. Pueden variar en términos de dispositivos, sistemas operativos y tecnologías específicas.", # 121
"Es un proceso fundamental en la creación de gráficos, animaciones y visualizaciones digitales, que consiste en generar imágenes finales o fotogramas a partir de datos de entrada, modelos 3D o descripciones de escenas. ", # 122
"Es el proceso de traducir el código fuente escrito por un programador en un lenguaje de programación de alto nivel a un código ejecutable que una computadora pueda entender.", # 123
"Es una técnica utilizada en el desarrollo de software y diseño de productos para crear versiones tempranas y simplificadas de un producto, con el propósito de probar y validar ideas antes de realizar una inversión completa.", # 124
###### DOCE LETRAS ######
"Es un término que se refiere a la capacidad de un juego para ser jugado por más de un jugador al mismo tiempo, ya sea en la misma ubicación física o a través de conexiones en línea.", # 125
"Es el proceso de crear un conjunto de instrucciones o algoritmos que una computadora puede entender y ejecutar.", # 126
"Se refiere al proceso de tomar una obra existente y actualizar o mejorar su calidad técnica, generalmente con el objetivo de presentar una versión mejorada a la audiencia.", # 127
"Se refiere a la mecánica de juego que permite a los jugadores crear, modificar o personalizar elementos dentro del mundo del juego.", # 128
"Es un término que se utiliza para describir un subgénero de videojuegos que incorpora elementos de dos series de videojuegos populares: Metroid y Castlevania", # 129
"Es un término que se utiliza para describir la condición de un personaje o entidad en un videojuego que no puede ser dañado, herido o derrotado por ataques dentro del juego.", # 130
"En el contexto de los videojuegos se refiere a un desafío o enigma que los jugadores deben resolver para avanzar en el juego.", # 131
"En el contexto de los videojuegos es un mecanismo o herramienta que mide el tiempo transcurrido en una partida o evento específico dentro del juego.", # 132
###### TRECE LETRAS ######
"Se refiere a un género o estilo de juego en el que los jugadores enfrentan desafíos y obstáculos que ponen a prueba su capacidad para sobrevivir en un entorno hostil o peligroso.", # 133
"Se refiere a una persona o un equipo de personas que se dedican a crear, diseñar y programar videojuegos. Son responsables de todas las etapas del proceso de desarrollo de un juego.", # 134
"En el contexto de los videojuegos se refiere al proceso de asignar una calificación o categoría a un juego para indicar su contenido y adecuación para diferentes audiencias.", # 135
###### CATORCE LETRAS ######
"En el contexto de los videojuegos se refiere a un sistema o modo de juego en el que los jugadores compiten para determinar su posición o rango dentro de un conjunto específico.", # 136
"Es un término que se utiliza para describir el proceso de desarrollar y definir conceptos o ideas abstractas de manera clara y precisa.", # 137
###### QUINCE LETRAS ######
"Se refiere a la estrategia y tácticas que un jugador utiliza para ubicarse y moverse en el mapa del juego con el fin de lograr ventajas y objetivos específicos.", # 138
"Se refiere a la capacidad que tienen los jugadores de modificar y adaptar aspectos específicos del juego para que se ajusten a sus preferencias personales.", # 139
]

func get_definition(wordIndex: int) -> String:
	var def = definiciones[wordIndex]
	return def
