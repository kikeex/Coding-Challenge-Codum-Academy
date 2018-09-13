class Canvas
  def initialize
      @anchoW = Array.new
      @altoH = Array.new
      $weight
      $height
  end

  def get_w_h(w,h)
    $weight = w
    $height = h
  end
  def canvaC(w,h)
    for i in 0..w.to_i-1
      @anchoW.unshift('-')
    end
    i=0
    for i in 0..w.to_i
      if i == 0 || i == (w.to_i-1)
        @altoH.insert(i,'|')
      else
        @altoH.insert(i,' ')
      end
    end
  end

  def ImprimirCanvaC(w,h)
    i=0
    j=0
    while i < @anchoW.size
      print @anchoW[i]
      i+=1
    end
    puts ''

    while j < h.to_i

      for i in 0..w.to_i
        if i == 0 || i == (w.to_i-1)
          print @altoH[i]
        else
          print @altoH[i]
        end
      end
      puts ''
      j+=1 

    end
    i=0
    while i < @anchoW.size
      print @anchoW[i]
      i+=1
    end
  end

  /def canvaL(x1,y1,x2,y2)
    i=0
    j=0
    while i < @anchoW.size
      print @anchoW[i]
      i+=1
    end
    puts ''

    while j < $height.to_i
      if (y1 >= y2 && j <= y1) || (y1 <= y2 && j <= y2)
        
      end
      for i in 0..$weight.to_i
        if (y1 >= y2 && j <= y1) || (y1 <= y2 && j <= y2)
          print @altoH[i]
        else
          print @altoH[i]
        end
      end
      puts ''
      j+=1 

    end
    i=0
    while i < @anchoW.size
      print @anchoW[i]
      i+=1
    end
    
    
  end
/


end
