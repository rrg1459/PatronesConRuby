puts "\nComposite"
puts   "---------\n\n"
##

require_relative "nodo_compuesto"
require_relative "hoja"

nodo_raiz = NodoCompuesto.new("Nodo Raíz")

hoja_1 = Hoja.new("Hoja 1")
hoja_2 = Hoja.new("Hoja 2")

nodo_compuesto_1 = NodoCompuesto.new("Nodo Compuesto 1")
nodo_compuesto_1.agregar_componente(hoja_1)
nodo_compuesto_1.agregar_componente(hoja_2)

nodo_raiz.agregar_componente(nodo_compuesto_1)

# Se puede recorrer la estructura del árbol usando recursividad
nodo_raiz.operacion

##
puts "\n---"
puts "Fin\n\n"