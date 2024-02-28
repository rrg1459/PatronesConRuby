puts "\nBuilder(aprendiendo)"
puts   "-------\n\n"
##

require_relative 'builder'

builder = BuilderOrdenador.new
builder.turbo
builder.add_dvd
builder.add_disco_duro(100000)
ordenador = builder.ordenador
puts ordenador.to_s

puts ""

builder = BuilderOrdenador.new
# builder.add_cd_and_dvd_and_turbo
builder.add_cd(true)
builder.add_disco_duro(5000)
ordenador = builder.ordenador
puts ordenador.to_s

##
puts "\n---"
puts "Fin\n\n"