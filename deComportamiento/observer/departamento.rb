class Departamento

  def actualizar_salario(empleado)
    puts("\nSe ha producido un cambio en el empleado #{empleado.nombre}")
    puts("Salario: #{empleado.salario}")
    puts("Cargo: #{empleado.titulo}")
  end

end
