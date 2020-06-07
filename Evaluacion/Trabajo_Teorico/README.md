# Entrega Teórica - Representación del conocimiento - 19/20
#### Por Francisco Jesús Beltrán Moreno

## Introducción
Los seres humanos son buenos entendiendo, asimilando e interpretando el conocimiento. Esto, les permite usar ese conocimiento para realizar acciones en la realidad.

¿Pero cómo podría hacerlo una máquina? Ante esta tesitura vamos a ver algunas de las técnicas más utilizadas. Pero antes de entrar en materia, vamos a hacer una ligera introducción a la representación del conocimiento.

¿Qué es la representación del conocimiento?
La representación del conocimiento estudia cómo los pensamientos, intenciones y juicios de un agente inteligente pueden ser expresados correctamente por un razonamiento automatizado.

Uno de los primeros propósitos de la representación del conocimiento incluye el modelado del comportamiento inteligente de un agente.

La representación del conocimiento y el razonamiento representa la información del mundo real de forma que la máquina pueda comprenderla y pueda utilizarla para resolver problemas complejos de la vida cotidiana mediante un lenguaje de comunicación natural para el ser humano.

Los diferentes tipos de conocimientos que se representan en IA son:
-	Objetos.
-	Eventos
-	Acciones.
-	Hechos.
-	Conocimientos-objetivos.
-	Base del conocimiento.

Una vez hecho esta pequeña introducción, proseguimos con las técnicas más utilizadas.

## Lógica
La representación del conocimiento usando la lógica es un lenguaje que hace usos de reglas definidas que trabaja con los hechos y no tiene ambigüedad en su representación. La lógica saca una conclusión en base a varias condiciones y leyes importantes.

También, hace uso de una sintaxis y una semántica bien definida. Cada sentencia puede ser traducida usando la sintaxis y la semántica.

La lógica se puede categorizar en dos tipos principales:
-	Lógica proposicional.
-	Predicados lógicos.

```Lenguaje Natural: “Todos los coches tienen ruedas”
Lógica: ∀X.(coche(X)→∃Y.(tiene(X,Y)∧ ruedas(Y)))
	Para toda X:
                 Si (X es un coche)
                 Entonces existe un Y tal que
                     (X tiene Y) y (Y son ruedas)
```

#### Sintaxis
- Conjunto de reglas que dictan como construir sentencias lógicas.
- Determina que símbolo podemos usar en la representación.
- Manera de escribir esos símbolos.

#### Semántica
- Es un conjunto de reglas con la que interpretamos las sentencias lógicas.
- Proporciona un significado a cada sentencia.

#### Ventajas
-	Ayuda a realizar el razonamiento lógico.
-	Es la base de los lenguajes de programación.

#### Desventajas
-	Tiene algunas restricciones y es complicado trabajar con ellas.
-	Puede no ser muy natural y la deducción podría no ser muy eficiente.

Un programa que nos permitiría trabajar con programación lógica sería **Anallogica**, aunque si web oficial no está disponible, hay multitud de sitios para poder descargarlo.

## Redes semánticas
Son una alternativa a los predicados lógicos. En las redes semánticas puedes representar el conocimiento en forma de grafos.

<p align="center">
  <img src="https://github.com/FranBeltranM/RC1920/blob/master/Evaluacion/Trabajo_Teorico/Images/Imagen%201.png">
</p>

Estos grafos están formados por nodos que representan objetos y aristas que describen la relación entre esos objetos. También categoriza los objetos en diferentes formas y los relaciona.

Esta representación tiene tres tipos de relaciones:
-	Relación IS-A (herencia) (es un/a): como en los lenguajes OO, el nodo destino tiene parentesco con el nodo origen.
-	Relación KIND-OF (es un tipo de): el nodo destino es un tipo del nodo origen, el nodo origen es una categoría y el nodo destino está contenido en esa categoría.
-	Relación HAS (tiene): representa una propiedad que tiene un nodo.

<p align="center">
  <img src="https://github.com/FranBeltranM/RC1920/blob/master/Evaluacion/Trabajo_Teorico/Images/Imagen%202.png">
</p>

#### Ventajas
-	Las redes semánticas son una representación natural del conocimiento.
-	Son capaces de transmitir el significado de manera clara y concisa.
-	Estas redes son simples y fáciles de entender, se entiende casi de manera natural.

#### Desventajas
-	Toman más tiempo computacional en tiempo de ejecución.
-	También son inadecuadas ya que no tienen un cuantificador equivalente.
-	Las redes no son inteligentes y dependen del creador.

Para las redes semánticas, un programa que nos permitiría trabajar con ellas es **SemnNet**

## Marco (Frame)
Un marco (frame, en inglés) es una estructura de datos que contiene una colección de atributos y valores que describe una entidad del mundo real. Tienen mucha similitud con las estructuras de los lenguajes de POO pero en el ámbito de la IA.

Su fundamento se basa en la idea básica de que la conducta humana se caracteriza por tomar hábitos y proceder en consecuencia en situaciones familiares para generar conocimiento a partir de deducciones.

Los marcos ofrecen una representación concisa y estructurada del conocimiento de forma natural. Constituyen un mecanismo general de representación del conocimiento, ya que permiten usar el poder de los objetos incluyendo a otros procesos y mecanismos.

Un marco abarca objetos complejos, situaciones complejas, o el manejo de problemas en una sola entidad. El conocimiento se particiona dentro de un marco por ranuras, estas ranuras pueden tener cualquier valor o tamaño.

<p align="center">
  <img src="https://github.com/FranBeltranM/RC1920/blob/master/Evaluacion/Trabajo_Teorico/Images/Imagen%203.png">
</p>

#### Ventajas
-	Facilita la programación agrupando datos relacionados.
-	Es fácil de entender y leer.
-	Escalabilidad muy alta, es realmente sencillo añadir ranuras para nuevos atributos y relaciones.
-	Fácil de añadir datos por defecto y encontrar atributos vacíos.

#### Desventajas
-	En un sistema de deducción basado en frames, el mecanismo puede no ser procesado fácilmente.
-	El mecanismo de deducción puede no ajustarse correctamente a nuevas situaciones.
-	Es una aproximación demasiado general.

## Reglas
En la representación del conocimiento mediante reglas, el agente comprueba la condición y si la condición se cumple, la acción correspondiente es seleccionada y se ejecuta.

La parte de la condición de la regla determina qué regla puede ser aplicada a un problema. Mientras que la parte de la acción de esa regla realiza los pasos para la resolución del problema. Este proceso conjunto es llamado ciclo de reconocimiento-toma de decisión.

```
Si la luz de la reserva está encendida y hay una gasolinera cerca
entonces
	Dirígete a la gasolinera
sino
	Continúa hasta la siguiente
```

El sistema de reglas está formado por tres partes:
-	Conjunto de reglas.
-	Memoria.
-	Ciclo de reconocimiento-toma de decisión.

#### Ventajas
-	Las reglas son expresadas en lenguaje natural.
-	Las reglas son altamente modificables, pueden ser fácilmente modificadas o eliminadas.

#### Desventajas
-	No muestra ninguna capacidad de aprendizaje y no almacena el resultado para futuras aplicaciones.
-	Durante la ejecución del programa, pueden ejecutarse demasiadas reglas en un momento determinad. Esto resulta muy ineficiente.

Para las reglas, un programa que usamos en nuestro 2º curso de la carrera fue el conocido **CLIPS**, con el podríamos trabajar programando con reglas.

## Bibliografía

https://www.edureka.co/blog/knowledge-representation-in-ai/

https://www.javatpoint.com/ai-techniques-of-knowledge-representation

https://en.wikipedia.org/wiki/Frame_(artificial_intelligence)

https://freedoomforlife.wordpress.com/marcos-frames/

https://www.cs.bham.ac.uk/~mmk/Teaching/AI/l6.html

https://www.researchgate.net/figure/Example-for-a-Semantic-Network_fig2_297652712

Búsqueda de términos:
https://www.wordreference.com/
