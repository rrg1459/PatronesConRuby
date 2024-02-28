puts "\nAbc"
puts   "---\n\n"
##

require_relative "comandos"
require_relative "boton"

boton_1 = Boton.new ComandoUno.new
boton_2 = Boton.new ComandoDos.new

boton_1.on_button_push
boton_2.on_button_push

##
puts "\n---"
puts "Fin\n\n"