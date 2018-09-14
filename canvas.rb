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
    if x1 == 0 || x2 == 0 || y == 0 || x1 == (@anchoW-1) || x2 == (@anchoW-1) || y == (@altoH-1) 
      return 
    end
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
    if y1 == 0 || y2 == 0 || x == 0 || y1 == (@altoH-1) || y2 == (@altoH-1) || x == (@anchoW-1) 
      return 
    end
    if (y1 > y2) 
           y1 ^= y2
           y2 ^= y1
           y1 ^= y2
      end

      for i in ((y1.to_i)..(y2.to_i))
        @matrizCanva[i][x] = 'X'
      end
    
  end

  def canvaR(x1,y1,x2,y2)
    if y1 == 0 || y2 == 0 || x1 == 0 || x2 == 0 || y1 == (@altoH-1) || y2 == (@altoH-1) || x1 == (@anchoW-1) || x2 == (@anchoW-1)
      return 
    end
    canvaLHorizontal(y1.to_i,x1.to_i,x2.to_i)
    canvaLVertical(x1.to_i,y1.to_i,y2.to_i)
    canvaLVertical(x2.to_i,y1.to_i,y2.to_i)
    canvaLHorizontal(y2.to_i,x1.to_i,x2.to_i)

  end

  def canvaB(x,y,c)
    if (x < @anchoW) && (y < @altoH) && (y >= 0) && (x >= 0) && (@matrizCanva[y][x] != "X") && (c != "X")
      pintarCanvaB(x.to_i,y.to_i,c,"inicio",0)
    end
  end

  def pintarCanvaB(x,y,c,posicion,movimientos)
    if ((x >= 1) && (y >= 1)  && (x < (@anchoW-1)) && (y < (@altoH-1)) && ((@matrizCanva[y][x].to_s) != "X") && (@matrizCanva[y][x] != c))
      @matrizCanva[y][x] = c 
      if posicion != "derecha"
        pintarCanvaB(x+1,y,c,"izquierda",movimientos+1)
      end
      if posicion != "arriba" 
        pintarCanvaB(x,y-1,c,"abajo",movimientos+1)
      end
      if posicion != "izquierda"
        pintarCanvaB(x-1,y,c,"derecha",movimientos+1)
      end
      if posicion != "abajo"
        pintarCanvaB(x,y+1,c,"arriba",movimientos+1)
      end

      
    end
  end


end