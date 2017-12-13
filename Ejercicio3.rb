=begin

  3. Arrays y números aleatorios

  Realiza un programa que rellene un array (o una estructura similar) con 20 números enteros 
  aleatorios entre 1 y 100 y que seguidamente los muestre por pantalla. A continuación, se deben 
  pasar los números primos a las primeras posiciones del array y los no primos a las posiciones 
  restantes. Muestra finalmente el array resultado.
  
=end

# Estilos output

class String
  def bold; "\e[1m#{self}\e[22m" end
  def underline; "\e[4m#{self}\e[24m" end
end

# Declaracion de arrays 

numeros = []
numPrimos = []
numNoPrimos = []

# Este bucle almacena los 20 números aleatorios en el array 'numeros' y lo muestra por pantalla

$i = 0
$num = 20
$indice = 0;

puts "\nArray original".bold.underline
print "┌────────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬"
puts "─────┬─────┬─────┬─────┬─────┬─────┬─────┐"
print "│ Indice "

while $indice < $num  do
  printf "│%4d ", $indice
  $indice +=1
end

print "│\n├────────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼"
puts "─────┼─────┼─────┼─────┼─────┼─────┼─────┤"
print "│ Valor  "

while $i < $num  do
  numeros[$i] = rand(100) + 1
  printf "│%4d ",  numeros[$i]
  $i +=1
end

print "│\n└────────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴"
puts "─────┴─────┴─────┴─────┴─────┴─────┴─────┘"

# Comprueba si el número es primo o no 

$j = 0

$p = 0
$nP = 0

while $j < $num  do
  
  $primo = true
  $n = 2
  while $n < numeros[$j]  do
    if numeros[$j] % $n == 0
      $primo = false
    end
    $n +=1
  end
    
  if  numeros[$j] <= 1
    $primo = false
  end
  
  # Si el número es primo lo almacena en el array 'numPrimos', si no es primo en 'numNoPrimos' 
  
  if $primo
    numPrimos[$p] = numeros[$j]
    $p +=1
  else
    numNoPrimos[$nP] = numeros[$j]
    $nP +=1
  end
  
  $j +=1
end


# Une los dos arrays en el original, 'numeros', colocando primero los primos 
$k = 0

while $k < $p  do
  numeros[$k] = numPrimos[$k]
  $k +=1
end

$l = 0

while $p < $num  do
  numeros[$p] = numNoPrimos[$l]
  $l +=1
  $p +=1
end

$m = 0

# Muestra el array 'numeros' con los primos primero 

$indice = 0;

puts "\nArray con primos primero".bold.underline
print "┌────────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬"
puts "─────┬─────┬─────┬─────┬─────┬─────┬─────┐"
print "│ Indice "

while $indice < $num  do
  printf "│%4d ", $indice
  $indice +=1
end

print "│\n├────────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼"
puts "─────┼─────┼─────┼─────┼─────┼─────┼─────┤"
print "│ Valor  "

while $m < $num  do
  printf "│%4d ",  numeros[$m]
  $m +=1
end

print "│\n└────────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴"
puts "─────┴─────┴─────┴─────┴─────┴─────┴─────┘"
