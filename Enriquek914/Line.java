import java.io.*;

public class Line implements Figura
{
  char simbol = 'x';
  public int  x1, y1, x2, y2;

  public Line(int x1, int y1, int x2, int y2)
  {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
  }


  public void addTo(Canvas canvas)
  {
    if (!validLine(canvas))
      {
      System.out.print("Invalid line!");
      }

    if (Horizontal()) 
      {
      for (int i = 0; i <= length(); i++)
        canvas.lineAt(x1 + i, y1, simbol);
    }
    else 
    {
      for (int i = 0; i <= length(); i++)
        canvas.lineAt(x1, y1 + i, simbol);
    }
  }

  private int length()
  {
    if (Horizontal())
      {
      return x2 - x1;
      }
      else
     {
        return y2 - y1;
     }
  }

  private boolean validLine(Canvas canvas)
  {
    
    if (x1 < 0 || y1 < 0 || x2 > canvas.width() || y2 > canvas.height())
      {  
      return false;
      }
   
    if (x1 != x2 && y1 != y2)
     {
      return false;
     }
      else
     {     
      return true;
     }
  }

  private boolean Horizontal()
  {
    return y1 == y2;
  }
}