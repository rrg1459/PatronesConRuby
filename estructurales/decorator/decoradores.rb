module EscritorTimeStamp

  def imprimir_linea(linea)
    super("#{Time.new}: #{linea}")
  end

end

module EscritorNumerosLineas

  attr_reader :numero_linea

  def imprimir_linea(linea)
    @numero_linea ||= 11
    super("#{@numero_linea}: #{linea}")
    @numero_linea += 11
  end

end
