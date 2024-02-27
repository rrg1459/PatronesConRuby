class Escritor

  def initialize(ruta)
    @fichero = File.open(ruta, 'w')
  end

  def imprimir_linea(linea)
    @fichero.print(linea)
    @fichero.print("\n")
  end

end
