package javaSintaxis;

public class DrawWhitCharacters {

	
	int width;
	int height;
	static char hor = '_';
	char ver = '|';
	
	public static void lines(int wParam) {
		for (int i = 0; i < wParam; i++) {
			System.out.print(hor);
		}
		System.out.println("\n");
	}

	public void rectangleStructure(int wParam, int hParam) {
		//TopLine
		lines(wParam);
		for (int i = 0; i < hParam - 1; i++) {
			for (int j = 0; j < wParam; j++) {
				if (j == 0 || j == wParam - 1) {
					System.out.print(ver);
				} else {
					System.out.print(" ");
				}
			}
			System.out.println(" ");
		}
		//FootLine
		lines(wParam);

	}

	
}
