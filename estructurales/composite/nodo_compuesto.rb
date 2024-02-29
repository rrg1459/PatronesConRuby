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
    puts "Ejecutando operación en el nodo compuesto --> #{@nombre}"
    # @componentes.each(&:operacion)
  end

end