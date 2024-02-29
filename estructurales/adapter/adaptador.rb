
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
