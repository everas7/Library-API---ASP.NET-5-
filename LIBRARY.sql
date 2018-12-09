/*
	Script Base de Datos para Solución Library REST API en ASP.NET 5
*/

CREATE DATABASE LIBRARY_APP_V2;

GO
USE LIBRARY_APP_V2;

CREATE TABLE BOOK (
	BOOKID INT PRIMARY KEY IDENTITY,
	TITLE NVARCHAR(100),
	AUTHOR NVARCHAR(100)

)

CREATE TABLE PAGE (
	ID INT PRIMARY KEY IDENTITY,
	PAGEID INT,
	BOOKID INT,
	HEADER NVARCHAR(MAX),
	CONTENT NVARCHAR(MAX),

	CONSTRAINT FK_BOOK_ID FOREIGN KEY (BOOKID) REFERENCES BOOK(BOOKID)

)
/* Stored Procedures  */
GO
CREATE PROCEDURE GETBOOKLIST
AS
SELECT * FROM BOOK
GO


CREATE PROCEDURE GETBOOK @BOOKID INT
AS
SELECT * FROM BOOK WHERE BOOKID=@BOOKID
GO

CREATE PROCEDURE GETPAGE @PAGEID INT, @BOOKID INT 
AS
SELECT * FROM PAGE WHERE BOOKID=@BOOKID AND PAGEID=@PAGEID
GO

CREATE PROCEDURE GETPAGELIST @BOOKID INT
AS
SELECT * FROM PAGE WHERE BOOKID=@BOOKID 
GO


/* Data de Libros*/
INSERT INTO BOOK VALUES(
'Sentaos, Andad y Estad Firmes',
'Watchman Nee'
)
INSERT INTO BOOK VALUES(
'El Alquimista',
'Paulo Coelho'
)
INSERT INTO BOOK VALUES(
'El Principito',
'Antoine de Saint'
)

/* Inserción Paginas Libro 1*/
INSERT INTO PAGE VALUES(
1,
1,
'Introducción',
'Si la vida del creyente ha de agradar a Dios, es
necesario que ésta se ajuste enteramente a Él. Con
excesiva frecuencia, en la aplicación de este principio a
nuestras vidas, enfatizamos sólo algún detalle de nuestra
conducta o de nuestro servicio a Dios. Por consiguiente,
muy a menudo no logramos apreciar la magnitud del
ajuste que tenemos que hacer, y el punto en que
deberíamos comenzar. Pero Dios juzga todo, el principio
y el fin, por las perfecciones de su Hijo. Las Escrituras
afirman claramente que a Dios le ha placido «reunir todas
las cosas en Cristo. . .en quien asimismo tuvimos
herencia" (Ef. 1:9-11). Es mi sincero ruego que, en las
páginas de este libro, sean nuevamente abiertos nuestros
ojos y veamos que sólo acentuando debidamente este
punto, podremos esperar la realización del propósito de
Dios para nuestras vidas, a saber, "que seamos para
alabanza de su gloria" (1:12).

Servirá de fondo a nuestras meditaciones la
epístola de Pablo a los Efesios.
Como tantas de las otras epístolas del apóstol,
ésta también tiene dos partes: una doctrinal y otra
práctica. La parte doctrinal, que abarca los capítulos 1 al
3, trata principalmente de los grandes hechos de la
redención que Dios ha obrado para nosotros en Cristo.
Luego, la sección práctica, que encierra los capítulos 4 al
6, nos presenta, a la luz de esta redención, las demandas
de Dios en lo que se refiere a la conducta y al celo.
Ambas partes están íntimamente ligadas, pero, como se
verá, el énfasis en cada caso es distinto.
Además, la segunda mitad, la parte práctica,
puede ser, a su vez, convenientemente subdividida según
su tema en una sección larga, que corre desde el 4:1
hasta el 6:9, y una segunda y más breve, que se extiende
desde el 6:10 hasta el final. La primera parte se relaciona
con la vida que llevamos en medio del mundo; la
segunda, con el conflicto que sostiene el creyente con el
diablo.
'

)


INSERT INTO PAGE VALUES(
2,
1,
'',
'
De modo que tenemos, en total, tres subdivisiones
de la epístola a los Efesios, presentando: 1) la posición
que ocupa el creyente en Cristo (1:1-3:21); 2) su vida en
el mundo (4:1-6:9); y 3) su actitud hacia el enemigo (6:10-
24). Podríamos resumirlo de la siguiente manera:
Efesios
A. Doctrinal (capítulos 1-3)
1. Nuestra posición en Cristo (1:1-3:21)
B. Práctica (capítulos 4-6)
2. Nuestra vida en el mundo (4:1-6:9)
3. Nuestra actividad frente al enemigo (6:10-24)
'

)


INSERT INTO PAGE VALUES(
3,
1,
'',
'
De todas las epístolas de Pablo, es en la de
Efesios que encontramos los valores más altos en lo que
a la conducta del creyente se refiere. La carta abunda en
riquezas espirituales, sin embargo, es intensamente
práctica. La primera mitad de la carta revela que nuestra
vida en Cristo es una de unión con Él en lugares
celestiales. La segunda mitad nos enseña, en términos
muy prácticos, cómo hemos de vivir esa vida, los que
estamos sobre la tierra. No es nuestro propósito dar un
estudio detallado de la epístola; sólo examinaremos
algunos de los principios céntricos que en ella se
encuentran. Para este fin emplearemos una palabra clave
que, creemos, expresa la idea central de cada sección.
En la primera división de la carta notaremos la
palabra sentar (2:8), clave de esa sección, que contiene
el secreto de una verdadera experiencia cristiana. Dios
nos ha hecho sentar con Cristo en lugares celestiales, y
todo creyente tiene que comenzar su vida espiritual
desde ese punto de descanso
'

)


INSERT INTO PAGE VALUES(
4,
1,
'Sentaos',
'
El Dios de nuestro Señor Jesucristo . . . le levantó
de entre los muertos, y le sentó a su diestra en las
regiones celestiales, muy por encima de todo gobierno y
autoridad y poder y señorío, y sobre todo nombre que se
nombra no sólo en este siglo, sino en el venidero (Efesios
1:17-21, VM).
Y juntamente con Él nos resucitó, y asimismo nos
hizo sentar en los lugares celestiales con Cristo Jesús . .
., porque por gracia sois salvos por medio de la fe; y esto
'

)

/* Inserción Paginas Libro 2*/

INSERT INTO PAGE VALUES(
1,
2,
'EL VIAJE INTERIOR',
'A lo largo del texto encontramos una frase repetida varias veces: «Cuando quieras una
cosa, todo el Universo conspirará para que la consigas», ésta es la tesis central de El
Alquimista, tal como el propio autor ha declarado.
Su intencionada ubicación en un tiempo sin fechas y en unos lugares entre realistas y
fantásticos, con unos personajes estereotipados —el joven pastor, la hermosa hija del
comerciante, el anciano sabio, el Mercader, el viajero Inglés...— y, sobre todo, su
estructura lineal e itinerante (en la que hechos y situaciones se repiten y reconocen unos
en otros formando entre sí un relato circular) le confieren un carácter de cuento
maravilloso, con una intención aleccionadora: las peripecias de los personajes parecen
seleccionadas y puestas al servicio de un mensaje espiritual y universal: la búsqueda de
la propia identidad. Así que puede decirse que, por más que la trama se cuaje de
situaciones y personajes de apariencia real, El Alquimista es un relato simbólico que nos
explica la transformación interior de su protagonista en su proceso espiritual hacia un
nuevo modelo de vida en armonía con el mundo.
'

)


INSERT INTO PAGE VALUES(
2,
2,
'',
'
El tema de la búsqueda de la propia identidad y su trama argumental itinerante a través
de preguntas y respuestas que el personaje central y sus acompañantes ocasionales se
plantean a lo largo del relato, convierten, pues, esta obra en una historia simbólica,
cargada de referencias filosóficas, religiosas, literarias y morales entre las que es fácil
reconocer reminiscencias de otras obras, hoy ya clásicas entre los libros simbólicos, como
El Conde Lucanor de Don Juan Manuel, El Lazarillo de Tormes, El Principito, de Antoine
de Saint-Exupéry o Juan Salvador Gaviota de Richard Bach y autores como Kavafis,
Kipling o Borges, por no aludir a la presencia continua de referencias bíblicas y coránicas.
La abundancia, por otra parte, de alusiones a Oscar Wilde, Las Mil y Una Noches o la
literatura sufí o el Evangelio lo convierten, en cierto modo, en un viaje literario por los
libros, que son un elemento omnipresente en el equipaje del joven protagonista.
Se ha dicho de esta obra que no es una hazaña épica, ni una historia trepidante, ni una
novela, ni un diario y que puede que no sea sólo un libro; de lo que no cabe duda es de
que tanto El Alquimista como su autor, Paulo Coelho, son hoy un fenómeno
extraordinario en el ámbito editorial en particular y de los medios de comunicación en
general: cerca de 195.000.000 de ejemplares vendidos en más de ochenta idiomas han
convertido a su autor en uno de los quince escritores más leídos del mundo y en una suerte
de guía espiritual.
'

)


INSERT INTO PAGE VALUES(
3,
2,
'La estructura narrativa',
'
El Alquimista es un relato itinerante de estructura cerrada: el joven protagonista parte de
los campos de Andalucía para llegar hasta las Pirámides de Egipto cruzando el continente
africano y, finalmente, regresa a su tierra de origen. El relato discurre en cinco momentos
que coinciden con su estancia en Tarifa, Tánger, Ceuta, el Oasis de Al-Fayum y Egipto.
Dos partes componen este trayecto, que son a la vez sus dos intentos por proseguir el
viaje: desde que parte de Tarifa hasta que se instala al servicio del Mercader de Cristales
(primera parte), y desde que prospera en su condición de sirviente hasta su llegada a
Egipto (segunda parte). Sin embargo, pocas veces el epílogo adquiere tanta importancia
como en esta historia: aun siendo tan breve, supone un brusco e inesperado giro que
vuelve a situarnos al protagonista en el punto de partida.
Esta composición circular viene a coincidir con la de muchos de los cuentos maravillosos,
que tienen una estructura predefinida en la que encontramos entre los personajes al héroe,
el agresor, el auxiliar, el mandatario, la víctima, el falso héroe y el donante, algunos de
los cuales también aparecen en esta historia, y un discurrir de acontecimientos que,
partiendo del «érase una vez», nos relatan la carencia del protagonista
'

)


INSERT INTO PAGE VALUES(
4,
2,
'Estilo',
'
El-La obra se caracteriza por un lenguaje sentencial, que convierte muchos parlamentos en
verdaderos aforismos, y podemos encontrarlos tanto en la voz del narrador como en la
del protagonista o sus sabios consejeros: el viejo Melquisedec, el Mercader, el Inglés y,
sobre todo, el Alquimista.
-Se insertan breves cuentos a lo largo de la novela, como por ejemplo el relato de la visita
de la Virgen y el Niño a un monasterio o el del mito de Narciso, según la versión que
Oscar Wilde realizó.
-El uso frecuente de palabras en mayúscula —Alma de Mundo, Leyenda Personal, Gran
Obra…— imprimen a la novela su rasgo estilístico quizá más llamativo: el sentido
alegórico unas veces y metafórico otras de un lenguaje propio de la literatura mística.
-Por lo demás, no se aprecia demasiada diferencia de registro lingüístico cuando habla el
narrador o cuando lo hacen los personajes centrales, pues se adivina en todas las voces la
del propio autor.
-Son muchos, por otra parte, los paralelismos entre unos personajes y otros. Así, el
encuentro del joven con el viejo Melquisedec se asemeja al que luego tendrá con el
Mercader, con el viajero Inglés o con el Alquimista.
En todos los casos, la relación que se establece entre maestro y discípulo nos recuerda a
la de otros personajes literarios: el Conde Lucanor con Patronio, el Lazarillo con su primer
amo, el ciego, o el Principito con el aviador en el desierto y se sostiene en una dinámica
de preguntas y respuestas al servicio de una intención claramente moralizante para el
lector, heredera, en buena medida, de las literaturas orientales.
-Abundan las citas entrecomilladas en las que se recogen ideas o pensamientos ya
expresados, bien por tratarse de evocaciones del protagonista, y que se acompañan de
fórmulas como «pensó el muchacho», o bien por ser citas de ideas ya expresadas, cerradas
por fórmulas como «había dicho el viejo». 
'

)


/* Inserción Paginas Libro 3*/

INSERT INTO PAGE VALUES(
1,
3,
'CUANDO ERA NIÑO',
'Cuando yo tenía seis años vi en un libro sobre la selva virgen que se titulaba "Historias vividas",
una magnífica lámina. Representaba una serpiente boa que se tragaba a una fiera.
En el libro se afirmaba: "La serpiente boa se traga su presa entera, sin masticarla. Luego ya no
puede moverse y duerme durante los seis meses que dura su digestión".
Reflexioné mucho en ese momento sobre las aventuras de la jungla y a mi vez logré trazar con
un lápiz de colores mi primer dibujo. Mi dibujo número 1 era de esta manera:
Enseñé mi obra de arte a las personas mayores y les pregunté si mi dibujo les daba miedo.
—¿por qué habría de asustar un sombrero?— me respondieron.
Mi dibujo no representaba un sombrero. Representaba una serpiente boa que digiere un elefante.
Dibujé entonces el interior de la serpiente boa a fin de que las personas mayores pudieran comprender.
Siempre estas personas tienen necesidad de explicaciones.
'

)


INSERT INTO PAGE VALUES(
2,
3,
'',
'
El o cerradas, y poner más interés en la geografía, la historia, el cálculo y la gramática. De esta
manera a la edad de seis años abandoné una magnífica carrera de pintor. Había quedado desilusionado
por el fracaso de mis dibujos número 1 y número 2. Las personas mayores nunca pueden comprender
algo por sí solas y es muy aburrido para los niños tener que darles una y otra vez explicaciones.
Tuve, pues, que elegir otro oficio y aprendía pilotear aviones. He volado un poco por todo el
mundo y la geografía, en efecto, me ha servido de mucho; al primer vistazo podía distinguir
perfectamente la China de Arizona. Esto es muy útil, sobre todo si se pierde uno durante la noche.
2
A lo largo de mi vida he tenido multitud de contactos con multitud de gente seria. Viví mucho con
personas mayores y las he conocido muy de cerca; pero esto no ha mejorado demasiado mi opinión
sobre ellas.
Cuando me he encontrado con alguien que me parecía un poco lúcido, lo he sometido a la
experiencia de mi dibujo número 1 que he conservado siempre. Quería saber si verdaderamente era un
ser comprensivo. E invariablemente me contestaban siempre: "Es un sombrero". Me abstenía de
hablarles de la serpiente boa, de la selva virgen y de las estrellas. Poniéndome a su altura, les hablaba
del bridge, del golf, de política y de corbatas. Y mi interlocutor se quedaba muy contento de conocer a un
hombre tan razonable.
'

)


INSERT INTO PAGE VALUES(
3,
3,
'II',
'
Viví así, solo, nadie con quien poder hablar verdaderamente, hasta cuando hace seis años tuve
una avería en el desierto de Sahara. Algo se había estropeado en el motor. Como no llevaba conmigo ni
mecánico ni pasajero alguno, me dispuse a realizar, yo solo, una reparación difícil. Era para mí una
cuestión de vida o muerte, pues apenas tenía agua de beber para ocho días.
La primera noche me dormí sobre la arena, a unas mil millas de distancia del lugar habitado más
próximo. Estaba más aislado que un náufrago en una balsa en medio del océano. Imagínense, pues, mi
sorpresa cuando al amanecer me despertó una extraña vocecita que decía:
— ¡Por favor... píntame un cordero!
—¿Eh?
—¡Píntame un cordero!
Me puse en pie de un salto como herido por el rayo. Me froté los ojos. Miré a mi alrededor. Vi a
un extraordinario muchachito que me miraba gravemente. Ahí tienen el mejor retrato que más tarde logré
hacer de él, aunque mi dibujo, ciertamente es menos encantador que el modelo. Pero no es mía la culpa.
Las personas mayores me desanimaron de mi carrera de pintor a la edad de seis años y no había
aprendido a dibujar otra cosa que boas cerradas y boas abiertas. 
'

)


INSERT INTO PAGE VALUES(
4,
3,
'III',
'
ElDe esta manera supe una segunda cosa muy importante: su planeta de origen era apenas más
grande que una casa.
Esto no podía asombrarme mucho. Sabía muy bien que aparte de los grandes planetas como la
Tierra, Júpiter, Marte, Venus, a los cuales se les ha dado nombre, existen otros centenares de ellos tan
pequeños a veces, que es difícil distinguirlos aun con la ayuda del telescopio. Cuando un astrónomo
descubre uno de estos planetas, le da por nombre un número. Le llama, por ejemplo, "el asteroide 3251".
Tengo poderosas razones para creer que el planeta del cual venía el principito era el asteroide B
612. Este asteroide ha sido visto sólo una vez con el telescopio en 1909, por un astrónomo turco.
Este astrónomo hizo una gran demostración de su descubrimiento en un congreso Internacional
de Astronomía. Pero nadie le creyó a causa de su manera de vestir. Las personas mayores son así.
Felizmente para la reputación del asteroide B 612, un dictador turco impuso a su pueblo, bajo pena de
muerte, el vestido a la europea. Entonces el astrónomo volvió a dar cuenta de su descubrimiento en 1920
y como lucía un traje muy elegante, todo el mundo aceptó su demostración.
Si les he contado de todos estos detalles sobre el asteroide B 612 y hasta les he confiado su
número, es por consideración a las personas mayores. A los mayores les gustan las cifras. Cuando se les
habla de un nuevo amigo, jamás preguntan sobre lo esencial del mismo. Nunca se les ocurre preguntar:
"¿Qué tono tiene su voz? ¿Qué juegos prefiere? ¿Le gusta coleccionar mariposas?" Pero en cambio
preguntan: "¿Qué edad tiene? ¿Cuántos hermanos? ¿Cuánto pesa? ¿Cuánto gana su padre?"
Solamente con estos detalles creen conocerle. Si les decimos a las personas mayores: "He visto una
casa preciosa de ladrillo rosa, con geranios en las ventanas y palomas en el tejado", jamás llegarán a
imaginarse cómo es esa casa. Es preciso decirles: "He visto una casa que vale cien mil pesos". Entonces
exclaman entusiasmados: "¡Oh, qué preciosa es!"
De tal manera, si les decimos: "La prueba de que el principito ha existido está en que era un
muchachito encantador, que reía y quería un cordero. Querer un cordero es prueba de que se existe", las
personas mayores se encogerán de hombros y nos dirán que somos unos niños. Pero si les decimos: "el
planeta de donde venía el principito era el asteroide B 612", quedarán convencidas y no se preocuparán
de hacer más preguntas. Son así. No hay por qué guardarles rencor. Los niños deben ser muy
indulgentes con las personas mayores.
'

)


INSERT INTO PAGE VALUES(
5,
3,
'IV',
'
Pero nosotros, que sabemos comprender la vida, nos burlamos tranquilamente de los números. A
mí me habría gustado más comenzar esta historia a la manera de los cuentos de hadas. Me habría
gustado decir:
"Era una vez un principito que habitaba un planeta apenas más grande que él y que tenía
necesidad de un amigo…" Para aquellos que comprenden la vida, esto hubiera parecido más real.
Porque no me gusta que mi libro sea tomado a la ligera. Siento tanta pena al contar estos
recuerdos. Hace ya seis años que mi amigo se fue con su cordero. Y si intento describirlo aquí es sólo
con el fin de no olvidarlo. Es muy triste olvidar a un amigo. No todos han tenido un amigo. Y yo puedo
llegar a ser como las personas mayores, que sólo se interesan por las cifras. Para evitar esto he
comprado una caja de lápices de colores. ¡Es muy duro, a mi edad, ponerse a aprender a dibujar, cuando
en toda la vida no se ha hecho otra tentativa que la de una boa abierta y una boa cerrada a la edad de 
6
seis años! Ciertamente que yo trataré de hacer retratos lo más parecido posibles, pero no estoy muy
seguro de lograrlo. Uno saldrá bien y otro no tiene parecido alguno. En las proporciones me equivoco
también un poco. Aquí el principito es demasiado grande y allá es demasiado pequeño. Dudo también
sobre el color de su traje. Titubeo sobre esto y lo otro y unas veces sale bien y otras mal. Es posible, en
fin, que me equivoque sobre ciertos detalles muy importantes. Pero habrá que perdonármelo ya que mi
amigo no me daba nunca muchas explicaciones. Me creía semejante a sí mismo y yo, desgraciadamente,
no sé ver un cordero a través de una caja. Es posible que yo sea un poco como las personas mayores.
He debido envejecer.

'

)

