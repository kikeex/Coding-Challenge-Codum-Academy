/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package canvas;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author checholini
 */
public class Canvas {

    static char[][] canvas;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        // TODO code application logic here        
        menu();
    }

    //Creacion de una matriz de tamaño width x heigth
    public static void createCanvas(int width, int heigth) {
        width += 2;
        heigth += 2;
        canvas = new char[heigth][width];
        fillCanvas(width, heigth);
        printCanvas();
    }

    //imprime el canvas 
    private static void printCanvas() {
        for (int i = 0; i < canvas.length; i++) {
            for (int j = 0; j < canvas[0].length; j++) {
                System.out.print(canvas[i][j]);
            }
            System.out.println("");
        }
    }

    //Permite darle bordes al canvas
    private static void fillCanvas(int width, int heigth) {
        for (int i = 0; i < heigth; i++) {
            for (int j = 0; j < width; j++) {
                if (i == 0 || i == heigth - 1) {
                    canvas[i][j] = '-';
                } else {
                    if (j == 0 || j == width - 1) {
                        canvas[i][j] = '|';
                    } else {
                        canvas[i][j] = ' ';
                    }
                }
            }
        }
    }

    //Interaccion Basica con el usuario
    private static void menu() throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        System.out.print("enter command: ");
        String line = br.readLine().trim();
        String[] words = line.split(" ");
        if (words[0].equals("Q")) {
            System.exit(0);
        }
        if (words.length == 3) {
            createCanvas(Integer.parseInt(words[1]), Integer.parseInt(words[2]));
        } else {
            determinar(words);
        }
        menu();
    }

    //Basado en la primera letra ingresada escoje el metodo que debe llamarse 
    private static void determinar(String[] words) {
        switch (words[0]) {
            
            case "L":
                checkLine(Integer.parseInt(words[1]), Integer.parseInt(words[2]), Integer.parseInt(words[3]), Integer.parseInt(words[4]));
                break;
            case "R":

                break;
            case "B":

                break;

        }
    }

    //Determina la direccion para la linea del canvas
    private static void checkLine(int x1, int y1, int x2, int y2) {
        if (x1 == x2) {
            drawVerticalLine(x1, y1, y2);
        } else if (y2 == y1) {
            drawHorizontalLine(y1, x1, x2);
        }
    }

    //Pinta las lineas verticales sobre la coordenada x
    private static void drawVerticalLine(int x1, int y1, int y2) {
        int endPoint = Math.max(y2, y1);
        int startPoint = Math.min(y2, y1);
        for (int i = startPoint; i <= endPoint; i++) {
            canvas[i][x1] = 'x';
        }
        printCanvas();
    }
    
    //Pinta las lineas verticales sobre la coordenada y
    private static void drawHorizontalLine(int y1, int x1, int x2) {
        int endPoint = Math.max(x2, x1);
        int startPoint = Math.min(x2, x1);
        for (int i = startPoint; i <= endPoint; i++) {
            canvas[y1][i] = 'x';
        }
        printCanvas();
    }

}
