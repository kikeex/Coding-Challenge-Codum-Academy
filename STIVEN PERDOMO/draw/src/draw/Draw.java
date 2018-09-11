/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package draw;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

/**
 *
 * @author jojstepersan
 */
public class Draw {

    /**
     * @param args the command line arguments
     */
    final static BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
    static StringTokenizer st;

    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        CanvasDraw canvas = null;
        boolean salir = true;
        while (salir) {
            //int t = Integer.valueOf(in.readLine());
            System.out.println("enter command: ");
            st = new StringTokenizer(in.readLine());
            switch (st.nextToken()) {
                case "C":
                    System.out.println("Crear canvas");
                    canvas = new CanvasDraw(Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()));
                    break;
                case "L":
                    System.out.println("hacer una linea");
                    canvas.drawLine(Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()));
                    break;
                case "R":
                    System.out.println("hacer rectangulo");
                    canvas.drawRectangule(Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()));
                    break;
                case "B":
                    System.out.println("pintar");
                    canvas.paintColor(Integer.valueOf(st.nextToken()), Integer.valueOf(st.nextToken()), st.nextToken().charAt(0), "star", 0);
                    break;
                case "Q":
                    salir = false;
                    break;
                default:
                    System.out.println("comando no valido");
                    break;
            }
            if (canvas != null) {
                canvas.draw();
            }
        }
//        canvas.draw();
//        canvas.drawLine(1, 1, 1, 5);
//        canvas.draw();
//        canvas.drawLine(1, 5, 4, 5);
//        canvas.draw();
//        canvas.drawRectangule(1, 16, 3, 20);
//        canvas.draw();
       // canvas.paintColor(3, 10, 'o', "start", 0);
//        canvas.draw();
    }

}
/*
C 20 4
L 1 2 6 2
L 6 3 6 4
R 16 1 20 3
B 10 3 o
Q
 */
