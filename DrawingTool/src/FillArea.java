
/**
 *
 * @author Lexnicholls
 */
public class FillArea {

    public static void bucket(int x, int y, char color) {

        if ((x < main.width - 2) && (y < main.height - 2) && (y >= 0) && (x >= 0)) {
            if (main.canvas[y][x] != 'X' && color != 'X') {
                paintBucket(x, y, color, "start", 0);
            }
        }

    }

    public static void paintBucket(int x, int y, char color, String position, int movements) {

        if (((x >= 1) && (y >= 1) && (x < (main.width - 1)) && (y < (main.height - 1))
                && (main.canvas[y][x] != 'X') && (main.canvas[y][x] != color))) {
            main.canvas[y][x] = color;
            if (!position.equals("right")) {
                paintBucket(x, y + 1, color, "left", movements + 1);
            }
            if (!position.equals("up")) {
                paintBucket(x - 1, y, color, "down", movements + 1);
            }
            if (!position.equals("left")) {
                paintBucket(x, y - 1, color, "right", movements + 1);
            }
            if (!position.equals("down")) {
                paintBucket(x + 1, y, color, "up", movements + 1);
            }

        }
    }
}
