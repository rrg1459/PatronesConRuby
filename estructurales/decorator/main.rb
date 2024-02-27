puts "\nDecorator"
puts   "---------\n\n"

require_relative "escritor"
require_relative "decoradores"

archivo = "archivo-#{Time.now.strftime "%Y%m%d%H%M%S"}"
escritor = Escritor.new(archivo)
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('')
escritor.extend(EscritorNumerosLineas)
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('')
escritor.extend(EscritorTimeStamp)
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('')
puts "ver archivo: #{archivo}"

puts "\nFin\n\n"