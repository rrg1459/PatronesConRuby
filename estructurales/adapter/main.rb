puts "\nAdapter"
puts   "-------\n\n"
##

require_relative "clase_adaptada"
require_relative "adaptador"


adaptada = ClaseAdaptada.new
adaptador = Adaptador.new(adaptada)

adaptador.metodo_b # Imprime "Ejecutando método_a"

##
puts "\n---"
puts "Fin\n\n"