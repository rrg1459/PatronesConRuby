puts "\nFactory"
puts   "-------\n\n"
##
require_relative 'lago'

puts "-"*20

lago = Lago.new(2)
lago.simular_dia

lago = RanaLago.new(3)
lago.simular_dia

lago = PatoLago.new(3)
lago.simular_dia

##
puts "\nFin\n\n"
