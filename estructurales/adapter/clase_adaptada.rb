require_relative "modulos"

class ClaseAdaptada
  include ModuloA

  def metodo_a
    puts "Ejecutando método_a"
  end
end
