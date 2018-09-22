/**
 *
 * @author Lexnicholls
 */
public class CreateRectangle {

    static void create(int x1, int y1, int x2, int y2) {

        CreateLine.horizontal(x1, y1, x2);
        CreateLine.vertical(x1, y1, y2);
        CreateLine.vertical(x2, y1, y2);
        CreateLine.horizontal(x1, y2, x2);

    }



}
