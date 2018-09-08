class Canvas
  def initialize
      @anchoW = Array.new
      @altoH = Array.new
  end

  def canvaC(w,h)
    for i in 0..w.to_i
      @anchoW = '-'
    end
    for i in 0..w.to_i
      if i == 0 || i == (w.to_i-1)
        @altoH = '|'
      else
        @altoH = ' '
      end
    end
  end

end
