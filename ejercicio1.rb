# El archivo casino.txt contiene las recaudaciones de 4 días de un casino separadas por
# mesa de juego.

# Se pide:
# Crear una clase Table cuyo constructor reciba el nombre de la mesa y las
# recaudaciones correspondientes de cada día.

# Crear un método que permita leer el archivo e instanciar una mesa por línea del
# archivo.

# Crear métodos que permitan:
# Conocer el mayor valor recaudado, y a que mesa y día corresponde.
# Calcular el promedio total de lo recaudado por todas las mesas en todos los dias


class Table
  attr_reader :t_name
  def initialize(t_name, collections_day1, collections_day2, collections_day3, collections_day4)
    @t_name = t_name
    @collections_day1 = collections_day1
    @collections_day2 = collections_day2
    @collections_day3 = collections_day3
    @collections_day4 = collections_day4
  end
end

def table_per_line
  file = File.open('casino.txt', 'r')
  data = file.readlines
  file.close

arreglo_de_mesas = []
  data.each do |line|
    line_array = line.split(', ')
    arreglo_de_mesas << (Table.new(line_array[0], line_array[1], line_array[2], line_array[3], line_array[4]))
   end
   puts arreglo_de_mesas[1].t_name
end

table_per_line














#
#
# def average_collections
#   File.open('casino.txt', 'r')
#   data = file.readlines
#   file.close
#
#   promedio_recaudaciones = []
#   data.each do |line|
#     line_array = line.split(', ')
#     promedio_recaudaciones << (Table.new(line_array[1].to_i + line_array[2].to_i + line_array[3].to_i + line_array[4].to_i)/4.0)
#   end
# end
