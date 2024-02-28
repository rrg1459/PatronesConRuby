puts "\nInterpreter"
puts   "-----------\n\n"
##

require_relative "buscador"

folder = '/boot'

expresion = FicherosTodos.new
if expresion.evaluar(folder).any?
  puts "\n1/5"
  puts "Ficheros Todos"
  puts "**************"
  expresion.evaluar(folder).each do |p|
    puts p
  end
end

expresion = FicherosNombre.new("*.png")
if expresion.evaluar(folder).any?
  puts "\n2/5"
  puts "Ficheros Nombre"
  puts "***************"
  expresion.evaluar(folder).each do |p|
    puts p
  end
end

expresion = FicherosEditables.new()
if expresion.evaluar(folder).any?
  puts "\n3/5"
  puts "Ficheros Editables"
  puts "******************"
  expresion.evaluar(folder).each do |p|
    puts p
  end
end

expresion = Or.new(FicherosNombre.new("*.png"), FicherosNombre.new("*.bin"))
if expresion.evaluar(folder).any?
  puts "\n4/5"
  puts "Ficheros png OR bin"
  puts "*******************"
  expresion.evaluar(folder).each do |p|
    puts p
  end
end

expresion = And.new(FicherosNombre.new("*.png"), FicherosNombre.new("*frame*"))
if expresion.evaluar(folder).any?
  puts "\n5/5"
  puts "Ficheros png AND frame"
  puts "**********************"
  expresion.evaluar(folder).each do |p|
    puts p
  end
end

##
puts "\n---"
puts "Fin\n\n"