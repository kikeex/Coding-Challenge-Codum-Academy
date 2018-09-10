require "matrix"

class Canvas

  def initialize(w,h)
    @canvasWeight=w
    @canvasHight=h
    @matrix=Array.new(@canvasHight){Array.new(@canvasWeight){false}}
  end
  def to_s
    if @canvasHight==0
      return ""
    end
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
  def createLine(x1,y1,x2,y2)
    if ((x1 < @canvasWeight) && (x2 < @canvasWeight) && (y1 < @canvasHight) && (y2 < @canvasHight))
      if ((x1!=x2) && (y1==y2))
        marckInH(x1,x2,y1)
      elsif ((x1==x2) && (y1!=y2))
        puts 'Alv'
        marckInV(y1,y2,x1)
      else
        return
      end
    end
  end
  def marckInH(a,b,y)
    if (a>b)
      a^=b
      b^=a
      a^=b
    end
    for i in (a..b)
      @matrix[y][i]=true
    end
  end
  def marckInV(a,b,x)
    if (a > b)
      a^=b
      b^=a
      a^=b
    end
    for i in (a..b)
      @matrix[i][x]=true
    end
  end
  def createRectangle(x1,y1,x2,y2)
    if ((x1 < @canvasWeight) && (x2 < @canvasWeight) && (y1 < @canvasHight) && (y2 < @canvasHight))
      marckInH(x1,x2,y1)
      marckInH(x1,x2,y2)
      marckInV(y1,y2,x1)
      marckInV(y1,y2,x2)
    end
  end
  def B(x,y,c)

  end
end
