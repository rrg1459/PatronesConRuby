class Hoja < Componente

  def initialize(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def operacion
    puts "Ejecutando operación en la hoja --> #{@nombre}"
  end

end
