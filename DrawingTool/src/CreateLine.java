/**
 *
 * @author Lexnicholls
 */
public class CreateLine {

    public static main ms;

    public static void vertical(int x1, int y1, int y2) {

        if (y1 > y2) {
            y1 ^= y2;
            y2 ^= y1;
            y1 ^= y2;
        }
        for (int i = y1; i <= y2; i++) {
            main.canvas[i][x1] = 'X';
        }
    }

    public static void horizontal(int x1, int y1, int x2) {

        if (x1 > x2) {
            x1 ^= x2;
            x2 ^= x1;
            x1 ^= x2;
        }
        for (int i = x1; i <= x2; i++) {
            main.canvas[y1][i] = 'X';
        }
    }


}
