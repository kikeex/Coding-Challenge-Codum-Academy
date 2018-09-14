require './canvas'
class Desafio

  def initialize
    @canvas = Canvas.new(0,0)
  end

  def lecturaEntrada
    entrada=Array.new
    print 'enter command: '
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
      lecturaEntrada
  end

  def opcionC(w,h)
      @canvas = Canvas.new(w,h)
      @canvas.canvaC
      @canvas.ImprimirCanvaC

  end

  def opcionL(x1,y1,x2,y2)
    if x1 == x2
      @canvas.canvaLVertical(x1.to_i,y1.to_i,y2.to_i)
      @canvas.ImprimirCanvaC
    else
      @canvas.canvaLHorizontal(y1.to_i,x1.to_i,x2.to_i)
      @canvas.ImprimirCanvaC
    end

  end

  def opcionR(x1,y1,x2,y2)
    @canvas.canvaR(x1,y1,x2,y2)
  	@canvas.ImprimirCanvaC
  end

  def opcionB(x,y,c)
    @canvas.canvaB(x.to_i,y.to_i,c)
    @canvas.ImprimirCanvaC
  end



end

main=Desafio.new
main.lecturaEntrada