
/**
 *
 * @author Alexander Nicholls
 */
import java.util.Scanner;

public class main {

    public static char[][] canvas;

    static int height, width, x1, x2, y1, y2, x, y;
    static char color;

    public static void main(String[] args) {
        String option;
        String[] optionSplit;
        Scanner input = new Scanner(System.in);
        do {
            System.out.println("Enter command: ");

            option = input.nextLine();

            optionSplit = option.split(" ");

            switch (optionSplit[0].toUpperCase()) {
                case "C":
                    width = Integer.parseInt(optionSplit[1]) + 2;
                    height = Integer.parseInt(optionSplit[2]) + 2;
                    manageOptionCreateCanvas(width, height);
                    break;

                case "L":
                    x1 = Integer.parseInt(optionSplit[1]);
                    y1 = Integer.parseInt(optionSplit[2]);
                    x2 = Integer.parseInt(optionSplit[3]);
                    y2 = Integer.parseInt(optionSplit[4]);
                    manageOptionCreateLine(x1, y1, x2, y2);
                    break;

                case "R":
                    x1 = Integer.parseInt(optionSplit[1]);
                    y1 = Integer.parseInt(optionSplit[2]);
                    x2 = Integer.parseInt(optionSplit[3]);
                    y2 = Integer.parseInt(optionSplit[4]);
                    manageOptionCreateRectangle(x1, y1, x2, y2);
                    break;

                case "B":
                    x = Integer.parseInt(optionSplit[1]);
                    y = Integer.parseInt(optionSplit[2]);
                    color = (optionSplit[3]).charAt(0);
                    manageOptionFillArea(x, y, color);
                    break;

                case "Q":
                    break;

                default:
                    System.out.println("\n Invalid Option \n");

            }
        } while (!optionSplit[0].equalsIgnoreCase("Q"));
    }

    private static void manageOptionCreateCanvas(int width, int height) {

        canvas = CreateCanvas.printRectangle(width, height);

        for (char[] canva : canvas) {
            for (int j = 0; j < canva.length; j++) {
                System.out.print(canva[j]);
            }
            System.out.println();
        }
    }

    private static void manageOptionCreateLine(int x1, int y1, int x2, int y2) {

        if (x1 == 0 || y1 == 0 || x2 == 0 || y2 == 0 || x1 == (width - 1) || x2 == (width - 1) || y1 == (height - 1) || y2 == (height - 1)) {
            PrintCanvas.printCanvas();
            return;
        }

        if (x1 == x2) {
            CreateLine.vertical(x1, y1, y2);
        } else if (y1 == y2) {
            CreateLine.horizontal(x1, y1, x2);
        }
        PrintCanvas.printCanvas();
    }

    private static void manageOptionCreateRectangle(int x1, int y1, int x2, int y2) {
        CreateRectangle.create(x1, y1, x2, y2);
        PrintCanvas.printCanvas();
    }

    private static void manageOptionFillArea(int x, int y, char color) {
        FillArea.bucket(x, y, color);
        PrintCanvas.printCanvas();
    }

}
