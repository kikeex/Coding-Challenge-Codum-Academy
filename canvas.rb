class Canvas

  def initialize(w,h)
      @anchoW = w.to_i+2
      @altoH = h.to_i+2
      @matrizCanva = Array.new(@altoH.to_i){Array.new(@anchoW.to_i)}
  end


  def canvaC
   for i in 0..(@altoH.to_i-1)
     for j in 0..(@anchoW.to_i-1)
      if i == 0 || i == @altoH.to_i-1
        @matrizCanva[i][j] =  '-'
      elsif j == 0 || j == @anchoW.to_i-1
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

    
  end

  def canvaLVertical(x,y1,y2)
    
    
  end


end