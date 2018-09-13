import java.io.*;

public class Canvas
{
 public int         width;
 public int         height;
 public char[][]    array;
 public char space = ' ';

  public Canvas(int w, int h)
  {
    width = w;
    height = h;
    array = new char[w][h];

    for (int i = 0; i < width; i++) 
      {
      for (int j = 0; j < height; j++)
        array[i][j] = space;
    }
  }

  public void lineAt(int x1,int y1, char c)
  {
    array [x1 - 1][y1 - 1] = c;
  }

  public void fill(int x, int y, char c)
  {
    if (x <= 0 || x > width || y <= 0 || y > height || array[x - 1][y - 1] != space)  
      return;

    array[x - 1][y - 1] = c;

    fill(x + 1, y, c);
    fill(x - 1, y, c);
    fill(x, y + 1, c);
    fill(x, y - 1, c);
  }

  public void drawn ()
  {
   
    for (int i = 0; i < width + 2; i++)  
      System.out.print("-");

    System.out.print(" ");

    for (int i = 0; i < height; i++) 
     {
      System.out.print("|");

      for (int j = 0; j < width; j++)
        System.out.print(array[j][i]);

        System.out.print("|");
        System.out.println();
    }

    
    for (int i = 0; i < width + 2; i++) 

      System.out.print("-");

    System.out.println();
  }

  public int width()
  {
    return width;
  }

  public int height()
  {
    return height;
  }
}
