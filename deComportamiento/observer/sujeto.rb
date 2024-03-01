module Sujeto

  def initialize
    @observadores = []
  end

  def notificar_observadores(tipo)
    @observadores.each do |observador|
      observador.actualizar_empleado(self, tipo)
    end
  end

  def add_observador(observador)
    @observadores << observador
  end

  def borrar_observador(observador)
    @observadores.delete observador
  end
end
