/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package draw;

/**
 *
 * @author jojstepersan
 */
public class CanvasDraw {

    private final char[][] canvas;
    private final int w;
    private final int h;

    public CanvasDraw(int w, int h) {
        this.w = w + 2;
        this.h = h + 2;
        this.canvas = new char[this.h][this.w];
        init();
    }

    public void draw() {
        for (char[] canva : canvas) {
            for (char c : canva) {
                System.out.print(c);
            }
            System.out.println();
        }
    }

    private void init() {
        for (int i = 1; i < h - 1; i++) {
            for (int j = 1; j < w - 1; j++) {
                canvas[i][j] = ' ';
            }
        }
        for (int i = 0; i < w; i++) {
            canvas[0][i] = '-';
            canvas[h - 1][i] = '-';
        }
        for (int i = 1; i < h - 1; i++) {
            canvas[i][0] = '|';
            canvas[i][w - 1] = '|';
        }
    }

    public void drawLine(int x1, int y1, int x2, int y2) {
        if (x1 == x2) {
            int yMin,yMax;
            yMin=Math.min(y1,y2);
            yMax=Math.max(y1,y2);
            for (int i = yMin; i < yMax+1; i++) {
                canvas[x1][i]='X';                
            }
        } else if (y1 == y2) {
            int xMin,xMax;
            xMin=Math.min(x1,x2);
            xMax=Math.max(x1,x2);
            for (int i = xMin; i < xMax+1; i++) {
                canvas[i][y1]='X';                
            }
        }
    }
    
    public void drawRectangule(int x1, int y1, int x2, int y2){
        drawLine(x1, y1, x1, y2);
        drawLine(x2, y1, x2, y2);
        drawLine(x1, y2, x2, y2);
        drawLine(x1, y1, x2, y1);
    }
}
