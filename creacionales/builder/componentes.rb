class Ordenador

  attr_accessor :pantalla
  attr_accessor :placa_base
  attr_reader :almacenamientos

  def initialize(pantalla = :crt, placa_base = PlacaBase.new, almacenamientos = [])
    @placa_base = placa_base
    @almacenamientos = almacenamientos
    @pantalla = pantalla
  end
  
  def to_s
    puts "Ordenador"
    puts "-->1"
    puts @pantalla
    puts "..."
    puts @placa_base.cpu
    puts "..."
    puts @placa_base.size_memoria
    puts "-->2"
    @almacenamientos.each do |almacenamiento|
      puts almacenamiento.tipo
      puts almacenamiento.size
      puts almacenamiento.editable
      puts "-->3"
    end
  end

end

class CPU
  def to_s
    puts "solo CPU"
  end
end

class BasicCPU < CPU
  def to_s
    puts "CPU basico"
  end
end

class TurboCPU < CPU
  def to_s
    puts "CPU turbo"
  end
end

class PlacaBase

  attr_accessor :cpu
  attr_accessor :size_memoria

  def initialize(cpu = BasicCPU.new, size_memoria = 1000)
    @cpu = cpu
    @size_memoria = size_memoria
  end

end

class Almacenamiento

  attr_reader :tipo		# :hard_disk, :cd or :dvd
  attr_reader :size		# En MB
  attr_reader :editable	# true si se puede escribir en él

  def initialize(tipo, size, editable)
    @tipo = tipo
    @size = size
    @editable = editable
  end

end

class AlmacenamientoPortatil < Almacenamiento
end

class OrdenadorSobremesa < Ordenador
end

class OrdenadorPortatil < Ordenador

  def initialize(placa_base = PlacaBase.new, almacenamientos = [])
    super(:lcd, placa_base, almacenamientos)
  end

end
