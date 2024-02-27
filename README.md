# Patrones de diseño con Ruby

Primero que nada y estrictamente hablando, los patrones de diseño no son código, se usa código para su representación visual, cómoda y lo mas sencillo posible, en este caso usaremos el lenguaje de programación Ruby.

Un patrón de diseño es una forma de resolver lago en un contexto específico.

Los patrones de diseño son plantillas con soluciones fáciles a problemas complejos que se pueden adaptar a cualquier lenguaje moderno.

Un patrón de diseño debe tener 3 características principales:
1. Estandariza el código entre los desarrolladores
2. Evita perder tiempo en problemas ya resueltos.
3. Es código reusable

# Tipos de patrones de diseño

La patrones de diseño se clasifican en 3 tipos dependiendo del problema que resuelven.

**Creacionales:** Se enfocan en crear una sola instancia de una clase y proveer un solo punto de acceso en toda la aplicación.

**Estructurales:** Se enfocan en cómo las clases y los objetos se componen para formar estructuras mas complejas.

**De comportamiento:** Se enfocan en como las clases y los objetos se comunican entre sí, haciendo el menor uso posible.

|Tipo de patrón|Patrones mas usados|Descripción|
|-|-|-|
|Creacionales|Factory, Builder, Singleton, Prototype|Se enfocan en la creación de objetos de forma flexible y eficiente.|
|Estructurales|Adapter, Decorator, Proxy, Composite|Se enfocan en la organización y composición de objetos para crear estructuras más complejas.|
|Comportamiento|Template, Strategy, Observer, Command, Interpreter, Iterator|Se enfocan en la comunicación entre objetos y la definición de diferentes comportamientos.|

## Creacionales

- **Factory:** Crea objetos de forma dinámica sin necesidad de especificar la clase concreta.
- **Builder:** Crea objetos paso a paso de forma controlada.
- **Singleton:** Garantiza que solo exista una instancia de una clase.
- **Prototype:** Crea nuevos objetos a partir de un prototipo existente.

## Estructurales

- **Adapter:** Permite que dos interfaces incompatibles interactúen entre sí.
- **Decorator:** Agrega funcionalidad a un objeto sin modificar su clase original.
- **Proxy:** Proporciona un representante para otro objeto.
- **Composite:** Permite tratar a un grupo de objetos como si fuera uno solo.


## De comportamiento

- **Template:** Define un esqueleto de un algoritmo y permite que las subclases implementen sus propios pasos.
- **Strategy:** Define una familia de algoritmos y permite que los objetos cambien su comportamiento sin modificar su estructura.
- **Observer:** Define una dependencia entre objetos de forma que cuando uno cambia de estado, notifica a los demás.
- **Command:** Encapsula una solicitud como un objeto para que se pueda ejecutar de forma diferida o en una cola.
- **Interpreter:** Define una gramática para un lenguaje y un intérprete para ejecutar esa gramática.
- **Iterator:** Permite recorrer una colección de objetos sin exponer su estructura interna.

<br><br>
**Nota:** *Esta clasificación no es estricta, ya que algunos patrones de diseño pueden tener características de más de un tipo.*