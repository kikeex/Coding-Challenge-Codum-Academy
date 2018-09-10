require "matrix"

class Canvas

  def initialize(canvas)
    @canvasWeight=canvas[0].to_i
    @canvasHight=canvas[1].to_i
    @matrix=Array.new(@canvasHight){Array.new(@canvasWeight){false}}
  end
  def to_s
    string = " " + drawFiller + drawRow(0) + "\n " + drawFiller
    return string
  end
  def drawRow(row)
    string=""
    while(row < @canvasHight)
      string+="\n"
      string+="|"
      string+=drawColumns(row)
      string+="|"
      row+=1
    end
    return string
  end
  def drawColumns(row)
    col=0
    string=""
    while (col < @canvasWeight)
      if((@matrix[row][col].to_s)=='true')
        string+="X"
      else
        string+=" "
      end
      col+=1
    end
    return string
  end
  def drawFiller
    string=""
    for i in (1..@canvasWeight)
      string+="-"
    end
    return string
  end
  def L(x1,y1,x2,y2)

  end
  def R(x1,y1,x2,y2)

  end
  def B(x,y,c)

  end
end
