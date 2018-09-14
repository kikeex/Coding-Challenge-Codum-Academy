require "matrix"

class Canvas

  def initialize(w,h)
    @canvasWeight=w
    @canvasHight=h
    @drawed=Array.new(@canvasHight){Array.new(@canvasWeight){" "}}
  end
  def to_s
    if ((@canvasHight==0)||(@canvasWeight==0))
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
      string+=@drawed[row][col].to_s
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
        marckInK(x1,x2,true,y1,"X")
      elsif ((x1==x2) && (y1!=y2))
        marckInK(y1,y2,false,x1,"X")
      else
        return
      end
    end
  end
  def marckInK(a,b,w,k,c)
    if (a>b)
      a^=b
      b^=a
      a^=b
    end
    for i in (a..b)
      if(w)
        @drawed[k][i]=c
      else
        @drawed[i][k]=c
      end
    end
  end
  def createRectangle(x1,y1,x2,y2)
    if ((x1 < @canvasWeight) && (x2 < @canvasWeight) && (y1 < @canvasHight) && (y2 < @canvasHight))
      marckInK(x1,x2,true,y1,"X")
      marckInK(x1,x2,true,y2,"X")
      marckInK(y1,y2,false,x1,"X")
      marckInK(y1,y2,false,x2,"X")
    end
  end
  def bucket(x,y,color)
    if ((x >= 0) && (y>=0) && (x < @canvasWeight) && (y < @canvasHight) && (@drawed[y][x]!="X"))
      paint(x,y,color,"start",0)
    end
  end
  def paint(x,y,color, direction,numMovements)
    if ((numMovements<(@canvasWeight*@canvasHight)) && (0<=x) && (0<=y) && (x<@canvasWeight) && (y<@canvasHight) && ((@drawed[y][x].to_s)!="X") && (@drawed[y][x]!=color))
      @drawed[y][x]=color
      if (direction!="down")
        paint(x,y-1,color,"up",numMovements+1)
      end
      if (direction!="right")
        paint(x-1,y,color,"left",numMovements+1)
      end
      if (direction!="up")
        paint(x,y+1,color,"down",numMovements+1)
      end
      if (direction!="left")
        paint(x+1,y,color,"right",numMovements+1)
      end
    end
    return
  end
end
