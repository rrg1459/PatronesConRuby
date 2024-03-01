puts "\nObserver"
puts   "--------\n\n"
##

require_relative "empleado"
require_relative "departamento"

empleado = Empleado.new("Pepe", "Jefe de equipo", 2000)
puts "\ndatos de #{empleado.nombre}"
puts("Salario: #{empleado.salario}")
puts("Cargo: #{empleado.titulo}")
empleado.add_observador Departamento.new
empleado.salario = 3000
empleado.titulo = "Gerente"

##
puts "\nFin\n\n"