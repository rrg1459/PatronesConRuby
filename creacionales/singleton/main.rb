puts "\nSingleton"
puts   "---------\n\n"

require_relative "logger"

Logger.instance.log("Mensaje 1")
Logger.instance.log("Mensaje 2")
Logger.instance.log("Mensaje 3")
Logger.instance.log("Mensaje 4")
Logger.instance.imprimir

puts "\nFin\n\n"