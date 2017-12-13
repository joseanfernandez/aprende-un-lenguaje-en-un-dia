=begin

  1. ¡Hola mundo!

  Realiza un programa que muestre por pantalla la frase ¡Hola mundo!.
  
=end

class String
  def bold; "\e[1m#{self}\e[22m" end
end

print "¡Hola Mundo!".bold
