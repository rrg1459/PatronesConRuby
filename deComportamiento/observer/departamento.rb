class Departamento

  def actualizar_empleado(empleado, tipo)
    puts("\nSe ha producido un cambio en el #{tipo} de #{empleado.nombre}")
    puts("El nuevo salario de #{empleado.nombre} es: #{empleado.salario}") if tipo == "salario"
    puts("El nuevo cargo de #{empleado.nombre} es: #{empleado.titulo}") if tipo == "titulo"
  end

end
