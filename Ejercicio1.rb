=begin

  1. ¡Hola mundo!

  Realiza un programa que muestre por pantalla la frase ¡Hola mundo!.
  
=end

class String
  def bold; "\e[1m#{self}\e[22m" end
  def blue; "\e[34m#{self}\e[0m" end
end

print "\n¡Hola Mundo!".bold.blue
