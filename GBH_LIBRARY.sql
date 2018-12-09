/*
	Script Base de Datos para Soluci�n Library REST API en ASP.NET 5
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

/* Inserci�n Paginas Libro 1*/
INSERT INTO PAGE VALUES(
1,
1,
'Introducci�n',
'Si la vida del creyente ha de agradar a Dios, es
necesario que �sta se ajuste enteramente a �l. Con
excesiva frecuencia, en la aplicaci�n de este principio a
nuestras vidas, enfatizamos s�lo alg�n detalle de nuestra
conducta o de nuestro servicio a Dios. Por consiguiente,
muy a menudo no logramos apreciar la magnitud del
ajuste que tenemos que hacer, y el punto en que
deber�amos comenzar. Pero Dios juzga todo, el principio
y el fin, por las perfecciones de su Hijo. Las Escrituras
afirman claramente que a Dios le ha placido �reunir todas
las cosas en Cristo. . .en quien asimismo tuvimos
herencia" (Ef. 1:9-11). Es mi sincero ruego que, en las
p�ginas de este libro, sean nuevamente abiertos nuestros
ojos y veamos que s�lo acentuando debidamente este
punto, podremos esperar la realizaci�n del prop�sito de
Dios para nuestras vidas, a saber, "que seamos para
alabanza de su gloria" (1:12).

Servir� de fondo a nuestras meditaciones la
ep�stola de Pablo a los Efesios.
Como tantas de las otras ep�stolas del ap�stol,
�sta tambi�n tiene dos partes: una doctrinal y otra
pr�ctica. La parte doctrinal, que abarca los cap�tulos 1 al
3, trata principalmente de los grandes hechos de la
redenci�n que Dios ha obrado para nosotros en Cristo.
Luego, la secci�n pr�ctica, que encierra los cap�tulos 4 al
6, nos presenta, a la luz de esta redenci�n, las demandas
de Dios en lo que se refiere a la conducta y al celo.
Ambas partes est�n �ntimamente ligadas, pero, como se
ver�, el �nfasis en cada caso es distinto.
Adem�s, la segunda mitad, la parte pr�ctica,
puede ser, a su vez, convenientemente subdividida seg�n
su tema en una secci�n larga, que corre desde el 4:1
hasta el 6:9, y una segunda y m�s breve, que se extiende
desde el 6:10 hasta el final. La primera parte se relaciona
con la vida que llevamos en medio del mundo; la
segunda, con el conflicto que sostiene el creyente con el
diablo.'

)


INSERT INTO PAGE VALUES(
2,
1,
'',
'
De modo que tenemos, en total, tres subdivisiones
de la ep�stola a los Efesios, presentando: 1) la posici�n
que ocupa el creyente en Cristo (1:1-3:21); 2) su vida en
el mundo (4:1-6:9); y 3) su actitud hacia el enemigo (6:10-
24). Podr�amos resumirlo de la siguiente manera:
Efesios
A. Doctrinal (cap�tulos 1-3)
1. Nuestra posici�n en Cristo (1:1-3:21)
B. Pr�ctica (cap�tulos 4-6)
2. Nuestra vida en el mundo (4:1-6:9)
3. Nuestra actividad frente al enemigo (6:10-24)'

)


INSERT INTO PAGE VALUES(
3,
1,
'',
'
De todas las ep�stolas de Pablo, es en la de
Efesios que encontramos los valores m�s altos en lo que
a la conducta del creyente se refiere. La carta abunda en
riquezas espirituales, sin embargo, es intensamente
pr�ctica. La primera mitad de la carta revela que nuestra
vida en Cristo es una de uni�n con �l en lugares
celestiales. La segunda mitad nos ense�a, en t�rminos
muy pr�cticos, c�mo hemos de vivir esa vida, los que
estamos sobre la tierra. No es nuestro prop�sito dar un
estudio detallado de la ep�stola; s�lo examinaremos
algunos de los principios c�ntricos que en ella se
encuentran. Para este fin emplearemos una palabra clave
que, creemos, expresa la idea central de cada secci�n.
En la primera divisi�n de la carta notaremos la
palabra sentar (2:8), clave de esa secci�n, que contiene
el secreto de una verdadera experiencia cristiana. Dios
nos ha hecho sentar con Cristo en lugares celestiales, y
todo creyente tiene que comenzar su vida espiritual
desde ese punto de descanso'

)


INSERT INTO PAGE VALUES(
4,
1,
'Sentaos',
'
El Dios de nuestro Se�or Jesucristo . . . le levant�
de entre los muertos, y le sent� a su diestra en las
regiones celestiales, muy por encima de todo gobierno y
autoridad y poder y se�or�o, y sobre todo nombre que se
nombra no s�lo en este siglo, sino en el venidero (Efesios
1:17-21, VM).
Y juntamente con �l nos resucit�, y asimismo nos
hizo sentar en los lugares celestiales con Cristo Jes�s . .
., porque por gracia sois salvos por medio de la fe; y esto'

)

/* Inserci�n Paginas Libro 2*/

INSERT INTO PAGE VALUES(
1,
2,
'EL VIAJE INTERIOR',
'A lo largo del texto encontramos una frase repetida varias veces: �Cuando quieras una
cosa, todo el Universo conspirar� para que la consigas�, �sta es la tesis central de El
Alquimista, tal como el propio autor ha declarado.
Su intencionada ubicaci�n en un tiempo sin fechas y en unos lugares entre realistas y
fant�sticos, con unos personajes estereotipados �el joven pastor, la hermosa hija del
comerciante, el anciano sabio, el Mercader, el viajero Ingl�s...� y, sobre todo, su
estructura lineal e itinerante (en la que hechos y situaciones se repiten y reconocen unos
en otros formando entre s� un relato circular) le confieren un car�cter de cuento
maravilloso, con una intenci�n aleccionadora: las peripecias de los personajes parecen
seleccionadas y puestas al servicio de un mensaje espiritual y universal: la b�squeda de
la propia identidad. As� que puede decirse que, por m�s que la trama se cuaje de
situaciones y personajes de apariencia real, El Alquimista es un relato simb�lico que nos
explica la transformaci�n interior de su protagonista en su proceso espiritual hacia un
nuevo modelo de vida en armon�a con el mundo.'

)


INSERT INTO PAGE VALUES(
2,
2,
'',
'
El tema de la b�squeda de la propia identidad y su trama argumental itinerante a trav�s
de preguntas y respuestas que el personaje central y sus acompa�antes ocasionales se
plantean a lo largo del relato, convierten, pues, esta obra en una historia simb�lica,
cargada de referencias filos�ficas, religiosas, literarias y morales entre las que es f�cil
reconocer reminiscencias de otras obras, hoy ya cl�sicas entre los libros simb�licos, como
El Conde Lucanor de Don Juan Manuel, El Lazarillo de Tormes, El Principito, de Antoine
de Saint-Exup�ry o Juan Salvador Gaviota de Richard Bach y autores como Kavafis,
Kipling o Borges, por no aludir a la presencia continua de referencias b�blicas y cor�nicas.
La abundancia, por otra parte, de alusiones a Oscar Wilde, Las Mil y Una Noches o la
literatura suf� o el Evangelio lo convierten, en cierto modo, en un viaje literario por los
libros, que son un elemento omnipresente en el equipaje del joven protagonista.
Se ha dicho de esta obra que no es una haza�a �pica, ni una historia trepidante, ni una
novela, ni un diario y que puede que no sea s�lo un libro; de lo que no cabe duda es de
que tanto El Alquimista como su autor, Paulo Coelho, son hoy un fen�meno
extraordinario en el �mbito editorial en particular y de los medios de comunicaci�n en
general: cerca de 195.000.000 de ejemplares vendidos en m�s de ochenta idiomas han
convertido a su autor en uno de los quince escritores m�s le�dos del mundo y en una suerte
de gu�a espiritual.'

)


INSERT INTO PAGE VALUES(
3,
2,
'La estructura narrativa',
'
El Alquimista es un relato itinerante de estructura cerrada: el joven protagonista parte de
los campos de Andaluc�a para llegar hasta las Pir�mides de Egipto cruzando el continente
africano y, finalmente, regresa a su tierra de origen. El relato discurre en cinco momentos
que coinciden con su estancia en Tarifa, T�nger, Ceuta, el Oasis de Al-Fayum y Egipto.
Dos partes componen este trayecto, que son a la vez sus dos intentos por proseguir el
viaje: desde que parte de Tarifa hasta que se instala al servicio del Mercader de Cristales
(primera parte), y desde que prospera en su condici�n de sirviente hasta su llegada a
Egipto (segunda parte). Sin embargo, pocas veces el ep�logo adquiere tanta importancia
como en esta historia: aun siendo tan breve, supone un brusco e inesperado giro que
vuelve a situarnos al protagonista en el punto de partida.
Esta composici�n circular viene a coincidir con la de muchos de los cuentos maravillosos,
que tienen una estructura predefinida en la que encontramos entre los personajes al h�roe,
el agresor, el auxiliar, el mandatario, la v�ctima, el falso h�roe y el donante, algunos de
los cuales tambi�n aparecen en esta historia, y un discurrir de acontecimientos que,
partiendo del ��rase una vez�, nos relatan la carencia del protagonista'

)


INSERT INTO PAGE VALUES(
4,
2,
'Estilo',
'
El-La obra se caracteriza por un lenguaje sentencial, que convierte muchos parlamentos en
verdaderos aforismos, y podemos encontrarlos tanto en la voz del narrador como en la
del protagonista o sus sabios consejeros: el viejo Melquisedec, el Mercader, el Ingl�s y,
sobre todo, el Alquimista.
-Se insertan breves cuentos a lo largo de la novela, como por ejemplo el relato de la visita
de la Virgen y el Ni�o a un monasterio o el del mito de Narciso, seg�n la versi�n que
Oscar Wilde realiz�.
-El uso frecuente de palabras en may�scula �Alma de Mundo, Leyenda Personal, Gran
Obra�� imprimen a la novela su rasgo estil�stico quiz� m�s llamativo: el sentido
aleg�rico unas veces y metaf�rico otras de un lenguaje propio de la literatura m�stica.
-Por lo dem�s, no se aprecia demasiada diferencia de registro ling��stico cuando habla el
narrador o cuando lo hacen los personajes centrales, pues se adivina en todas las voces la
del propio autor.
-Son muchos, por otra parte, los paralelismos entre unos personajes y otros. As�, el
encuentro del joven con el viejo Melquisedec se asemeja al que luego tendr� con el
Mercader, con el viajero Ingl�s o con el Alquimista.
En todos los casos, la relaci�n que se establece entre maestro y disc�pulo nos recuerda a
la de otros personajes literarios: el Conde Lucanor con Patronio, el Lazarillo con su primer
amo, el ciego, o el Principito con el aviador en el desierto y se sostiene en una din�mica
de preguntas y respuestas al servicio de una intenci�n claramente moralizante para el
lector, heredera, en buena medida, de las literaturas orientales.
-Abundan las citas entrecomilladas en las que se recogen ideas o pensamientos ya
expresados, bien por tratarse de evocaciones del protagonista, y que se acompa�an de
f�rmulas como �pens� el muchacho�, o bien por ser citas de ideas ya expresadas, cerradas
por f�rmulas como �hab�a dicho el viejo�. '

)


/* Inserci�n Paginas Libro 3*/

INSERT INTO PAGE VALUES(
1,
3,
'CUANDO ERA NI�O',
'Cuando yo ten�a seis a�os vi en un libro sobre la selva virgen que se titulaba "Historias vividas",
una magn�fica l�mina. Representaba una serpiente boa que se tragaba a una fiera.
En el libro se afirmaba: "La serpiente boa se traga su presa entera, sin masticarla. Luego ya no
puede moverse y duerme durante los seis meses que dura su digesti�n".
Reflexion� mucho en ese momento sobre las aventuras de la jungla y a mi vez logr� trazar con
un l�piz de colores mi primer dibujo. Mi dibujo n�mero 1 era de esta manera:
Ense�� mi obra de arte a las personas mayores y les pregunt� si mi dibujo les daba miedo.
��por qu� habr�a de asustar un sombrero?� me respondieron.
Mi dibujo no representaba un sombrero. Representaba una serpiente boa que digiere un elefante.
Dibuj� entonces el interior de la serpiente boa a fin de que las personas mayores pudieran comprender.
Siempre estas personas tienen necesidad de explicaciones.'

)


INSERT INTO PAGE VALUES(
2,
3,
'',
'
El o cerradas, y poner m�s inter�s en la geograf�a, la historia, el c�lculo y la gram�tica. De esta
manera a la edad de seis a�os abandon� una magn�fica carrera de pintor. Hab�a quedado desilusionado
por el fracaso de mis dibujos n�mero 1 y n�mero 2. Las personas mayores nunca pueden comprender
algo por s� solas y es muy aburrido para los ni�os tener que darles una y otra vez explicaciones.
Tuve, pues, que elegir otro oficio y aprend�a pilotear aviones. He volado un poco por todo el
mundo y la geograf�a, en efecto, me ha servido de mucho; al primer vistazo pod�a distinguir
perfectamente la China de Arizona. Esto es muy �til, sobre todo si se pierde uno durante la noche.
2
A lo largo de mi vida he tenido multitud de contactos con multitud de gente seria. Viv� mucho con
personas mayores y las he conocido muy de cerca; pero esto no ha mejorado demasiado mi opini�n
sobre ellas.
Cuando me he encontrado con alguien que me parec�a un poco l�cido, lo he sometido a la
experiencia de mi dibujo n�mero 1 que he conservado siempre. Quer�a saber si verdaderamente era un
ser comprensivo. E invariablemente me contestaban siempre: "Es un sombrero". Me absten�a de
hablarles de la serpiente boa, de la selva virgen y de las estrellas. Poni�ndome a su altura, les hablaba
del bridge, del golf, de pol�tica y de corbatas. Y mi interlocutor se quedaba muy contento de conocer a un
hombre tan razonable.'

)


INSERT INTO PAGE VALUES(
3,
3,
'II',
'
Viv� as�, solo, nadie con quien poder hablar verdaderamente, hasta cuando hace seis a�os tuve
una aver�a en el desierto de Sahara. Algo se hab�a estropeado en el motor. Como no llevaba conmigo ni
mec�nico ni pasajero alguno, me dispuse a realizar, yo solo, una reparaci�n dif�cil. Era para m� una
cuesti�n de vida o muerte, pues apenas ten�a agua de beber para ocho d�as.
La primera noche me dorm� sobre la arena, a unas mil millas de distancia del lugar habitado m�s
pr�ximo. Estaba m�s aislado que un n�ufrago en una balsa en medio del oc�ano. Imag�nense, pues, mi
sorpresa cuando al amanecer me despert� una extra�a vocecita que dec�a:
� �Por favor... p�ntame un cordero!
��Eh?
��P�ntame un cordero!
Me puse en pie de un salto como herido por el rayo. Me frot� los ojos. Mir� a mi alrededor. Vi a
un extraordinario muchachito que me miraba gravemente. Ah� tienen el mejor retrato que m�s tarde logr�
hacer de �l, aunque mi dibujo, ciertamente es menos encantador que el modelo. Pero no es m�a la culpa.
Las personas mayores me desanimaron de mi carrera de pintor a la edad de seis a�os y no hab�a
aprendido a dibujar otra cosa que boas cerradas y boas abiertas. '

)


INSERT INTO PAGE VALUES(
4,
3,
'III',
'
ElDe esta manera supe una segunda cosa muy importante: su planeta de origen era apenas m�s
grande que una casa.
Esto no pod�a asombrarme mucho. Sab�a muy bien que aparte de los grandes planetas como la
Tierra, J�piter, Marte, Venus, a los cuales se les ha dado nombre, existen otros centenares de ellos tan
peque�os a veces, que es dif�cil distinguirlos aun con la ayuda del telescopio. Cuando un astr�nomo
descubre uno de estos planetas, le da por nombre un n�mero. Le llama, por ejemplo, "el asteroide 3251".
Tengo poderosas razones para creer que el planeta del cual ven�a el principito era el asteroide B
612. Este asteroide ha sido visto s�lo una vez con el telescopio en 1909, por un astr�nomo turco.
Este astr�nomo hizo una gran demostraci�n de su descubrimiento en un congreso Internacional
de Astronom�a. Pero nadie le crey� a causa de su manera de vestir. Las personas mayores son as�.
Felizmente para la reputaci�n del asteroide B 612, un dictador turco impuso a su pueblo, bajo pena de
muerte, el vestido a la europea. Entonces el astr�nomo volvi� a dar cuenta de su descubrimiento en 1920
y como luc�a un traje muy elegante, todo el mundo acept� su demostraci�n.
Si les he contado de todos estos detalles sobre el asteroide B 612 y hasta les he confiado su
n�mero, es por consideraci�n a las personas mayores. A los mayores les gustan las cifras. Cuando se les
habla de un nuevo amigo, jam�s preguntan sobre lo esencial del mismo. Nunca se les ocurre preguntar:
"�Qu� tono tiene su voz? �Qu� juegos prefiere? �Le gusta coleccionar mariposas?" Pero en cambio
preguntan: "�Qu� edad tiene? �Cu�ntos hermanos? �Cu�nto pesa? �Cu�nto gana su padre?"
Solamente con estos detalles creen conocerle. Si les decimos a las personas mayores: "He visto una
casa preciosa de ladrillo rosa, con geranios en las ventanas y palomas en el tejado", jam�s llegar�n a
imaginarse c�mo es esa casa. Es preciso decirles: "He visto una casa que vale cien mil pesos". Entonces
exclaman entusiasmados: "�Oh, qu� preciosa es!"
De tal manera, si les decimos: "La prueba de que el principito ha existido est� en que era un
muchachito encantador, que re�a y quer�a un cordero. Querer un cordero es prueba de que se existe", las
personas mayores se encoger�n de hombros y nos dir�n que somos unos ni�os. Pero si les decimos: "el
planeta de donde ven�a el principito era el asteroide B 612", quedar�n convencidas y no se preocupar�n
de hacer m�s preguntas. Son as�. No hay por qu� guardarles rencor. Los ni�os deben ser muy
indulgentes con las personas mayores.'

)


INSERT INTO PAGE VALUES(
5,
3,
'IV',
'
Pero nosotros, que sabemos comprender la vida, nos burlamos tranquilamente de los n�meros. A
m� me habr�a gustado m�s comenzar esta historia a la manera de los cuentos de hadas. Me habr�a
gustado decir:
"Era una vez un principito que habitaba un planeta apenas m�s grande que �l y que ten�a
necesidad de un amigo�" Para aquellos que comprenden la vida, esto hubiera parecido m�s real.
Porque no me gusta que mi libro sea tomado a la ligera. Siento tanta pena al contar estos
recuerdos. Hace ya seis a�os que mi amigo se fue con su cordero. Y si intento describirlo aqu� es s�lo
con el fin de no olvidarlo. Es muy triste olvidar a un amigo. No todos han tenido un amigo. Y yo puedo
llegar a ser como las personas mayores, que s�lo se interesan por las cifras. Para evitar esto he
comprado una caja de l�pices de colores. �Es muy duro, a mi edad, ponerse a aprender a dibujar, cuando
en toda la vida no se ha hecho otra tentativa que la de una boa abierta y una boa cerrada a la edad de 
6
seis a�os! Ciertamente que yo tratar� de hacer retratos lo m�s parecido posibles, pero no estoy muy
seguro de lograrlo. Uno saldr� bien y otro no tiene parecido alguno. En las proporciones me equivoco
tambi�n un poco. Aqu� el principito es demasiado grande y all� es demasiado peque�o. Dudo tambi�n
sobre el color de su traje. Titubeo sobre esto y lo otro y unas veces sale bien y otras mal. Es posible, en
fin, que me equivoque sobre ciertos detalles muy importantes. Pero habr� que perdon�rmelo ya que mi
amigo no me daba nunca muchas explicaciones. Me cre�a semejante a s� mismo y yo, desgraciadamente,
no s� ver un cordero a trav�s de una caja. Es posible que yo sea un poco como las personas mayores.
He debido envejecer.
'

)

