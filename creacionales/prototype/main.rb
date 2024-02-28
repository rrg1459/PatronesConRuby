puts "\nPrototype"
puts   "---------\n\n"
##

require_relative 'persona'

# Creamos un prototipo de persona
prototipo_persona = Persona.new("Juan", 30)

puts "prototipo de persona"
puts prototipo_persona.nombre
puts prototipo_persona.edad

puts "\nPersona 1. Se cambia el nombre"

# Clonamos el prototipo para crear una nueva persona
persona_1 = prototipo_persona.clone
persona_1.nombre = "María"

# La nueva persona tiene diferentes atributos, pero la misma edad
puts persona_1.nombre # => "María"
puts persona_1.edad # => 30

puts "\nPersona 2 se cambia la edad"

# Duplicamos el prototipo para crear una nueva persona
persona_2 = prototipo_persona.dup
persona_2.edad = 24

# La nueva persona tiene diferentes atributos, pero la misma edad
puts persona_2.nombre # => "Juan"
puts persona_2.edad # => 24
##
puts "\n---"
puts "Fin\n\n"