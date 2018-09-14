class Canvas

  def initialize(w,h)
      @anchoW = w.to_i+2
      @altoH = h.to_i+2
      @matrizCanva = Array.new(@altoH.to_i){Array.new(@anchoW.to_i){" "}}
  end


  def canvaC
   for i in 0..(@altoH-1)
     for j in 0..(@anchoW-1)
      if i == 0 || i == @altoH-1
        @matrizCanva[i][j] =  '-'
      elsif j == 0 || j == @anchoW-1
        @matrizCanva[i][j] = '|'
      else
        @matrizCanva[i][j] = ' '
      end
    end
   end
   
  end

  def ImprimirCanvaC
    for i in 0..(@altoH-1)
      for j in 0..(@anchoW-1)
        print "#{@matrizCanva[i][j]}"
      end
      puts ''
    end
  end

  def canvaLHorizontal(y,x1,x2)
      if (x1 > x2) 
           x1 ^= x2
           x2 ^= x1
           x1 ^= x2
      end

      for i in (x1..x2)
        @matrizCanva[y][i] = 'X'
      end
  end


  def canvaLVertical(x,y1,y2)
    if (y1 > y2) 
           y1 ^= y2
           y2 ^= y1
           y1 ^= y2
      end

      for i in ((y1.to_i)..(y2.to_i))
        @matrizCanva[i][x] = 'X'
      end
    
  end

  def canvaB(x,y,c)
    if (x < @anchoW && y < @altoH && y >= 0 && x >= 0 && @matrizCanva[y][x] != 'X' && c != 'X')
      pintarCanvaB(x,y,c,'inicio',0)
    end
  end

  def pintarCanvaB(x,y,c,posicion,movimientos)
    if x >= 0 && y >= 0 && @matrizCanva[y][x] != c && x < @anchoW && y < @altoH
      if posicion != 'derecha'
        pintarCanvaB(x,y,'izquierda',movimientos+1)
      end

      
    end
  end


end