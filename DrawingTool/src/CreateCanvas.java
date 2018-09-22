/**
 *
 * @author Lexnicholls
 */
public class CreateCanvas {

    static char[][] printRectangle(int column, int row) {

        char[][] canvasTemp = new char[row][column];

        for (int i = 0; i < column; i++) {
            for (int j = 0; j < row; j++) {
                if (i == 0 || i == column
                        || j == 0 || j == row) {
                    canvasTemp[j][i] = '-';
                } else {
                    canvasTemp[j][i] = ' ';
                }

                if (i == column - 1 || j == row - 1) {
                    canvasTemp[j][i] = '-';
                }

                if ((i == 0 && (j > 0 && j < row - 1)) || (i == column - 1 && (j > 0 && j < row - 1))) {
                    canvasTemp[j][i] = '|';
                }

            }
        }
        return canvasTemp;

    }
}
