## Patrón de diseño Composite en Ruby

**El patrón Composite permite componer objetos en una estructura de árbol y trabajar con ella como si fuera un objeto único.**

**Veamos un ejemplo:**

**1. Definimos la interfaz para los componentes:**

```ruby
class Componente
  def nombre
  end

  def agregar_componente(componente)
  end

  def eliminar_componente(componente)
  end

  def operacion
  end
end
```

**2. Creamos las clases para las hojas y los nodos compuestos:**

```ruby
require_relative "componente"

class NodoCompuesto < Componente
  def initialize(nombre)
    @nombre = nombre
    @componentes = []
  end

  def nombre
    @nombre
  end

  def agregar_componente(componente)
    @componentes << componente
  end

  def eliminar_componente(componente)
    @componentes.delete(componente)
  end

  def operacion
    puts "Ejecutando operación en el nodo compuesto #{@nombre}"
    @componentes.each(&:operacion)
  end
end
```

```ruby
class Hoja < Componente
  def initialize(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def operacion
    puts "Ejecutando operación en la hoja #{@nombre}"
  end
end
```

**3. Creamos una estructura de árbol de componentes:**

```ruby
require_relative "nodo_compuesto"
require_relative "hoja"

nodo_raiz = NodoCompuesto.new("Nodo Raíz")

hoja_1 = Hoja.new("Hoja 1")
hoja_2 = Hoja.new("Hoja 2")

nodo_compuesto_1 = NodoCompuesto.new("Nodo Compuesto 1")
nodo_compuesto_1.agregar_componente(hoja_1)
nodo_compuesto_1.agregar_componente(hoja_2)

nodo_raiz.agregar_componente(nodo_compuesto_1)

# Se puede recorrer la estructura del árbol usando recursividad
nodo_raiz.operacion
# Ejecutando operación en el nodo compuesto --> Nodo Raíz
# Ejecutando operación en el nodo compuesto --> Nodo Compuesto 1
# Ejecutando operación en la hoja --> Hoja 1
# Ejecutando operación en la hoja --> Hoja 2

```

**En este ejemplo, la clase `Componente` define la interfaz común para los componentes. Las clases `Hoja` y `NodoCompuesto` implementan esta interfaz para las hojas y los nodos compuestos, respectivamente. La clase `NodoCompuesto` puede agregar y eliminar componentes, y también puede realizar operaciones en todos sus componentes de forma recursiva.**

**El patrón Composite es útil en las siguientes situaciones:**

* Cuando necesitas representar una estructura de árbol de objetos.
* Cuando quieres realizar operaciones en todos los objetos de una estructura de árbol de forma recursiva.
* Cuando quieres aumentar la flexibilidad de tu código al desacoplar la estructura del árbol de la lógica de la aplicación.
