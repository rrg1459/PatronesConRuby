class IteradorArray

  def initialize(array)
    # Trabajar con una copia del array para evitar que se produzcan problemas cuando el array sea modificado
    @array = Array.new(array)
    @index = 0
  end

  def siguiente?
    @index < @array.length
  end

  def get
    # Tener el valor actual del arreglo si se requiriera
    @array[@index]
  end

  def siguiente
    value = @array[@index]
    @index += 1
    value
  end

end
