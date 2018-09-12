package javaSintaxis;

public class DrawWhitCharacters {

	// atributes
	static char hor = '_';
	char ver = '|';

	//Draw a line
	public static void lines(int wParam) {
		for (int i = 0; i < wParam; i++) {
			System.out.print(hor);
		}
		System.out.println("\n");
	}
	//Draw all rectangle
	public void rectangleStructure(int wParam, int hParam) {
		// TopLine
		lines(wParam);
		for (int i = 0; i < hParam; i++) {
			for (int j = 0; j < wParam; j++) {
				if (j == 0 || j == wParam - 1) {
					System.out.print(ver);
				} else {
					System.out.print("°");
				}
			}
			System.out.println(" ");
		}
		// FootLine
		lines(wParam);
	}

	public void optionL(int wParam, int hParam, int x1, int y1, int x2, int y2) {
		// TopLine
		lines(wParam);
		for (int i = 0; i < hParam; i++) {
			for (int j = 0; j < wParam; j++) {
				if (j == 0 || j == wParam - 1) {
					System.out.print(ver);
					if (j == x1) {
						for (int k = x1; x1 <= x2; x1++) {
							System.out.println('x');
						}
					}

				} else {
					System.out.print(" ");
				}
			}
			System.out.println(" ");
		}
		// FootLine
		lines(wParam);
	}

}
