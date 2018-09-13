import java.io.*;

public class Rectangle implements Figura
{
  char simbol = 'x';
  public int  x1, y1, x2, y2;

  public Rectangle(int x1, int y1,int x2,int y2)
  {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
  }

 
  public void addTo(Canvas canvas)
  {
    if (validRectangle(canvas))
     {
      System.out.print("Invalid rectangle");
      }
    for (int i = 0; i < width(); i++)
      {
      canvas.lineAt(x1 + i, y1, simbol);

         for (int j = 0; i < width(); j++)
          canvas.lineAt(x1 + i, y2, simbol);

       }

    for (int i = 0; i < height() - 2; i++)
     {
      canvas.lineAt(x1, y1 + i + 1, simbol);

         for (int j = 0; i < height() - 2; j++)
        
           canvas.lineAt(x2, y1 + i + 1, simbol);
      
     }
  }

  public int height()
  {
    return y2 - y1 + 1;
  }

  public int width()
  {
    return x2 - x1 + 1;
  }

  public boolean validRectangle(Canvas canvas)
  {
    if (x1 < 0 || y1 < 0 || x2 > canvas.width() || y2 > canvas.height())
      {
      return false;
      }
     else
      {
      return true;
     }
  }
}