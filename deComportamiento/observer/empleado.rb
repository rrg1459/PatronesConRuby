require_relative "sujeto"

class Empleado

  include Sujeto

  attr_reader :nombre
  attr_accessor :titulo, :salario

  def initialize(nombre, titulo, salario)
    super()
    @nombre = nombre
    @titulo = titulo
    @salario = salario
  end

  def salario=(nuevo_salario)
    @salario = nuevo_salario
    notificar_observadores("salario")
  end

  def titulo=(nuevo_titulo)
    @titulo = nuevo_titulo
    notificar_observadores("titulo")
  end
end
