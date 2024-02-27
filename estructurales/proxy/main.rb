puts "\nProxy"
puts   "-----\n\n"
##

require_relative 'proxy_seguro'
require_relative 'cuenta_banco'

begin
  cuenta = CuentaBanco.new 100
  cuenta.deposito 50
  cuenta.retirada 10

  puts "Balance sin validación #{cuenta.balance}"

  proxy = ProxySeguro.new cuenta, "pedro"
  proxy.deposito 50
  proxy.retirada 10

  puts "Balance con validación #{proxy.balance}"

  proxy = ProxySeguro.new cuenta, "Raul"
  proxy.deposito 50
  proxy.retirada 10

  puts "Balance con validación #{proxy.balance}"

rescue Exception => e
  puts e.message
  # puts e.backtrace.inspect
end

##
puts "\nFin\n\n"