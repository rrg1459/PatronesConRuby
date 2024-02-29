## Patrón de diseño Adapter en Ruby

**El patrón Adapter en Ruby permite que dos objetos con interfaces incompatibles interactúen entre sí.** Se crea un objeto intermedio, el adaptador, que traduce la interfaz de un objeto a la otra.

**Veamos un ejemplo:**

**1. Definimos las interfaces incompatibles:**

```ruby
module ModuloA
  def metodo_a
  end
end

module ModuloB
  def metodo_b
  end
end

```

**2. Creamos la clase que necesita ser adaptada:**

```ruby
require_relative "modulos"

class ClaseAdaptada
  include ModuloA

  def metodo_a
    puts "Ejecutando método_a"
  end
end

```

**3. Creamos el adaptador:**

```ruby
require_relative "modulos"

class Adaptador
  include ModuloB

  def initialize(adaptada)
    @adaptada = adaptada
  end

  def metodo_b
    @adaptada.metodo_a
  end
end
```

**4. Usamos el adaptador para hacer que las clases interactúen:**

```ruby
require_relative "clase_adaptada"
require_relative "adaptador"


adaptada = ClaseAdaptada.new
adaptador = Adaptador.new(adaptada)

adaptador.metodo_b # Imprime "Ejecutando método_a"
```

**En este ejemplo, la clase `ClaseAdaptada` solo implementa la interfaz `ModuloA`. El adaptador `Adaptador` implementa la interfaz `ModuloB` y traduce las llamadas a `metodo_b` a llamadas a `metodo_a` en la clase `ClaseAdaptada`.**

**El patrón Adapter es útil en las siguientes situaciones:**

* Cuando necesitas integrar dos sistemas con interfaces incompatibles.
* Cuando quieres reutilizar una clase existente que no tiene la interfaz que necesitas.
* Cuando quieres aumentar la flexibilidad de tu código al desacoplar las interfaces de las clases.

**Existen diferentes tipos de adaptadores:**

* **Adaptador de clase:** Adapta una clase a una interfaz diferente.
* **Adaptador de objeto:** Adapta un objeto a una interfaz diferente.
* **Adaptador de interfaz:** Adapta una interfaz a otra interfaz.

**El patrón Adapter es un patrón de diseño muy flexible que se puede utilizar en una gran variedad de situaciones.**

