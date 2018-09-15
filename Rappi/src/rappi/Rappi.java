/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rappi;

import java.util.Scanner;

/**
 *
 * @author User
 */
public class Rappi {

    /**
     * @param args the command line arguments
     */
    static int cx, cy;
    static Rappi ra = new Rappi();
    static String matriz[][];

    public static void main(String[] args) {
        // TODO code application logic here

        Scanner scan = new Scanner(System.in);
        String instruccion;
        do {
            System.out.print("enter command: ");
            instruccion = scan.nextLine();
            String[] partes = instruccion.split(" ");
            if (partes[0].equalsIgnoreCase("C")) {
                cx = Integer.parseInt(partes[1]) + 4;
                cy = Integer.parseInt(partes[2]) + 2;
                matriz = new String[cx][cy];
                ra.plantilla(cx, cy);
            } else {
                if (partes[0].equalsIgnoreCase("L")) {
                    ra.metodoL(Integer.parseInt(partes[2]), Integer.parseInt(partes[1]), Integer.parseInt(partes[4]), Integer.parseInt(partes[3]));
                } else {
                    if (partes[0].equalsIgnoreCase("R")) {
                        ra.metodoR(Integer.parseInt(partes[2]), Integer.parseInt(partes[1]), Integer.parseInt(partes[4]), Integer.parseInt(partes[3]));
                    } else {
                        if (partes[0].equalsIgnoreCase("Q")) {
                            break;
                        } else {
//                            if (partes[0].equalsIgnoreCase("B")) {
//                                ra.metodoB(Integer.parseInt(partes[2]), Integer.parseInt(partes[1]), partes[3]);
//                            }
                        }
                    }
                }
            }
            ra.Leer();
        } while (true);
    }

    public void plantilla(int x, int y) {
        ra.darX(x - 2);
        ra.darY(y - 2);
    }

    public void metodoL(int x1, int y1, int x, int y) {
        if (x1 == x) {
            ra.rellenarX(y1, y, x);
        } else {
            ra.rellenarY(x1, x, y);
        }
    }

    public void metodoR(int x1, int y1, int x, int y) {
        ra.rellenarX(y1, y, x1);
        ra.rellenarX(y1, y, x);
        ra.rellenarY(x1, x, y);
        ra.rellenarY(x1, x, y1);
    }

//    public void metodoB(int x, int y, String rellenar) {
//        if (y < matriz.length && x < matriz[0].length && x >= 0 && y >= 0) {
//            if (matriz[y][x].equals(rellenar) || matriz[y][x].equals("X") || matriz[y][x].equals("-") || matriz[y][x].equals("|")) {
//            } else {
//                metodoB(x + 1, y, rellenar);
//                metodoB(x - 1, y, rellenar);
//                metodoB(x, y + 1, rellenar);
//                metodoB(x, y - 1, rellenar);
//            }
//        }
//    }


    public void rellenarX(int a, int b, int c) {
        for (int i = a; i <= b; i++) {
            matriz[i][c] = "X";
        }
    }

    public void rellenarY(int a, int b, int c) {
        for (int i = a; i <= b; i++) {
            matriz[c][i] = "X";
        }
    }

    public void darX(int x) {
        if (x == 1) {
            matriz[x][0] = "-";
            matriz[x][cy - 1] = "-";
        } else {
            matriz[x][0] = "-";
            matriz[x][cy - 1] = "-";
            darX(x - 1);
        }
    }

    public void darY(int y) {
        if (y == 1) {
            matriz[0][y] = "|";
            matriz[cx - 1][y] = "|";
        } else {
            darY(y - 1);
            matriz[0][y] = "|";
            matriz[cx - 1][y] = "|";
        }
    }

    public void Leer() {
        for (int i = 0; i < cy; i++) {
            for (int j = 0; j < cx; j++) {
                if (matriz[j][i] != null) {
                    System.out.print(matriz[j][i]);
                } else {
                    if (j != 0 && j < cx - 3) {
                        System.out.print(" ");
                    }
                    matriz[j][i] = " ";
                }
            }
            System.out.println("");
        }
    }

}
