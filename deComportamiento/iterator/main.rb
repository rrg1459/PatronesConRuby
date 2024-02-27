puts "\nIterator"
puts   "--------\n\n"

require_relative "iterador_externo"

array = ["Manzana", "Pera", "Plátano"]

iterador = IteradorArray.new array
while iterador.siguiente?
  puts iterador.siguiente
end

puts "\nFin\n\n"