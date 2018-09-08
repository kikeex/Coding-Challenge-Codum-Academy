class Canvas
  def C(canvas)
    @canvasWeight=canvas[0].to_i+1
    @canvasHight=canvas[1].to_i+1
    toDrawCanvas
  end

  def toDrawCanvas
    @cadena=""
    for i in 0..@canvasHight
      for j in 0..@canvasWeight
        if i==0 || i==(@canvasHight)
          @cadena+="-"
        else
          if j==0||j==@canvasWeight
            @cadena+="|"
          else
            @cadena+=" "
          end
        end
      end
      @cadena+="\n"
    end
    return @cadena
  end

  def L(x1,y1,x2,y2)

  end

  def R(x1,y1,x2,y2)

  end
  def B(x,y,c)

  end
end
