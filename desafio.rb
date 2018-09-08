require './canvas'
class Desafio

  def lecturaEntrada
    entrada=Array.new
    varInicial=gets.chomp
    entrada=varInicial.split(" ")
    seleccionOpcion(entrada)
  end

  def seleccionOpcion(entrada)
    case entrada.first
    when 'C'
        opcionC(entrada[1],entrada[2])
      when 'L'
        opcionL(entrada[1],entrada[2],entrada[3],entrada[4])
      when 'R'
        opcionR(entrada[1],entrada[2],entrada[3],entrada[4])
      when 'B'
        opcionB(entrada[1],entrada[2],entrada[3])
      when 'Q'
          !exit
      end

  end

  def opcionC(w,h)
      puts "Esta es la variable w = #{w} y h= #{h}"
      @canvas = Canvas.new
      @canvas.canvaC(w,h)

  end

  def opcionL(x1,y1,x2,y2)

  end

  def opcionR(x1,y1,x2,y2)

  end

  def opcionB(x,y,c)

  end



end

main=Desafio.new
main.lecturaEntrada
