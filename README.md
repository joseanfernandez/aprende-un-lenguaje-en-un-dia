# Aprende un lenguaje de programación en un día (ejercicio voluntario para subir nota).

## Introducción

Cuando te sacaste el carnet de conducir, aprendiste las normas de circulación así como los fundamentos básicos para manejar un coche: volante, marchas, freno, acelerador, embrague, retrovisores... Seguramente, el coche que conduces ahora es diferente al que utilizaste para aprender a conducir, no obstante, lo puedes llevar sin problema. Cada coche tiene sus peculiaridades, pero quien sabe manejar un automóvil, puede adaptarse a las medidas, tacto y comportamiento de un vehículo en cuestión de horas.

Aprender a programar es como aprender a conducir. Si tienes una base sólida de programación y sabes manejar con soltura los tipos de datos, bucles, arrays, clases, métodos, etc. podrás pasar de un lenguaje a otro en un período relativamente corto, simplemente tendrás que adaptarte a la sintaxis y a las peculiaridades del nuevo lenguaje.

Con este ejercicio se pretende despertar el interés por otros lenguajes de programación distintos al que el alumno está estudiando como primer lenguaje.

Sigue los pasos que se indican a continuación.

## Creación del equipo

Este ejercicio se debe hacer en grupos de 3 alumnos. Uno de ellos será el representante del grupo.

## Forkea forkea

El representante del grupo debe hacer un *fork* de este repositorio para utilizarlo como base.

## Añadiendo colaboradores

El encargado del grupo deberá añadir como colaboradores del repositorio *forkeado* a los otros dos miembros, para trabajar todos sobre los mismos archivos. Cuando alguien es colaborador en un repositorio, puede hacer *push* a él sin necesidad de pedir permiso o hacer *pull request*.

Para añadir colaboradores hay que hacer click en la pestaña *Settings* y seleccionar luego *Collaborators* en el menú.

## Miembros del grupo

Escribe aquí los miembros del grupo. El primero es el representante o encargado.

**"Frente Popular de Judea"**

* José Antonio Fernández García
* Cyntia García Ruíz
* Christian Raúl Amo Olsson

## Lenguaje de programación

El profesor llevará una cajita llena de papelitos con los nombres de distintos lenguajes de programación. Los encargados de cada grupo meterán la mano en la caja y sacarán dos papelitos, de los cuales el grupo elegirá uno. Se permite hacer intercambio de papelitos entre grupos.

Escribe el lenguaje de programación elegido por el grupo.

* Ruby

Los papelitos se han recortado de este [documento](lenguajes_de_programacion.pdf).

## Información sobre el lenguaje

Busca páginas y/o manuales sobre el lenguaje de programación elegido. Escribe aquí las principales características: cuándo y para qué se creó, en qué ámbito se utiliza, cuáles son sus principales ventajas, etc. Pon aquí enlaces y capturas de pantalla.

**¿Cuándo?**

Ruby fue creado por el programador el japonés Yukihiro "Matz" Matsumoto, quien comenzó a trabajar en Ruby en 1993, y lo presentó públicamente en 1995. Combina una sintaxis inspirada en Python y Perl con características de programación orientada a objetos similares a Smalltalk. Comparte también funcionalidad con otros lenguajes de programación como Lisp, Lua, Dylan y CLU. Ruby es un lenguaje de programación interpretado en una sola pasada y su implementación oficial es distribuida bajo una licencia de software libre.

**¿Para qué?**

Yukihiro Matsumoto, más conocido como Matz, creó Ruby buscando un lenguaje que se ajustara a sus necesidades. Buscaba que fuera sintácticamente simple, completamente orientado a objetos y portátil. Al no encontrar algo que se ajustara a estas características, decidió crear un lenguaje propio.

**¿En que ámbito se utiliza?**

Es de proposito general, se utiliza para el desarrollo de aplicaciones web y demás.

**Principales ventajas**

* Se desarrollan aplicaciones escribiendo menos código que otros frameworks, lo que permite reducir las horas de desarrollo.
* Cuenta con una sintaxis muy legible y cómoda para desarrolladores por lo tanto es mas sencillo trabajar con este lenguaje.
* Estas ventajas fomentan que sea un lenguaje en expansión y cada día más empresas y programadores lo utilizan.

## Herramientas de desarrollo

Indica aquí qué software has tenido que instalar para programar en este lenguaje. Añade enlaces y/o capturas de pantalla.

* Para Mac no es necesario instalar nada.

* Para Windows hemos tenido que instalar [Ruby Installer](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.0.0-p451.exe?direct) Luego, ejecuta el instalador, sigue los pasos de instalación y listo.

* Por último, si usas Linux, puedes usar el manejador de paquetes de preferencia. Por ejemplo, en Debian o Ubuntu, puedes instalar Ruby   a través de apt:

```
$ sudo apt-get install ruby
```

## Poniendo en práctica el lenguaje

Pon en práctica el lenguaje de programación realizando los siguientes ejercicios. Para cada uno de los ejercicios, pega el código fuente de la solución y una captura de pantalla.

### 1. ¡Hola mundo!

Realiza un programa que muestre por pantalla la frase **¡Hola Mundo!**.

![Hola Mundo](Imagenes/ejercicio01.png)

```Ruby

class String
  def bold; "\e[1m#{self}\e[22m" end
  def blue; "\e[34m#{self}\e[0m" end
end

print "\n¡Hola Mundo!".bold.blue
 
  ```


### 2. Pirámide

Dada una altura introducida por el usuario, realiza un programa que pinte una pirámide a base de asteriscos con la altura indicada.

![Pirámide](Imagenes/ejercicio02.png)

```Ruby

class String
  def green; "\e[32m#{self}\e[0m" end
end

puts "\nPinto una pirámide de asteriscos con la altura que quieras."
print "Introduce la altura de la pirámide: "
$h = Integer(gets)
$altura = 1
$espacios = ($h - 1)

puts

while $altura <= $h do
  
  # Pinta espacios
  
  $i = 0
  while $i < $espacios
    print " "
    $i +=1
  end
  
  # Pinta los asteriscos
  
  $j = 1
  while $j < $altura * 2
    print "*".green
    $j +=1
  end
  
  $altura +=1
  $espacios -=1
  puts
  
end

```

### 3. Arrays y números aleatorios

Realiza un programa que rellene un array (o una estructura similar) con 20 números enteros aleatorios entre 1 y 100 y que seguidamente los muestre por pantalla. A continuación, se deben pasar los números primos a las primeras posiciones del array y los no primos a las posiciones restantes. Muestra finalmente el array resultado.

![Array](Imagenes/ejercicio03.png)

```Ruby

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

```

## Presentación de resultados

Cada equipo explicará al resto de la clase lo aprendido durante la realización del ejercicio. Todos los miembros de cada equipo deben participar en la explicación. Se puede utilizar como material de base para la presentación el repositorio de GitHub.

## Recompensa

* Todos los alumnos que realicen correctamente la actividad tendrán 0'25 puntos extra en la nota del trimestre.

* Los miembros del equipo más votado ganarán un premio.

:star: Si te ha gustado este ejercicio, dale una estrellita al [repositorio original](https://github.com/LuisJoseSanchez/aprende-un-lenguaje-en-un-dia).

