=begin

  2. Pirámide

  Dada una altura introducida por el usuario, realiza un programa que pinte una pirámide a base de 
  asteriscos con la altura indicada.
  
=end

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




