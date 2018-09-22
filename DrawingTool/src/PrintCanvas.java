/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lexnicholls
 */
public class PrintCanvas {

    public static void printCanvas() {
        for (char[] canva : main.canvas) {
            for (int j = 0; j < canva.length; j++) {
                System.out.print(canva[j]);
            }
            System.out.println();
        }
    }

}
