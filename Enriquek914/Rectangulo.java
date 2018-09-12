import java.util.Scanner;

public class Rectangulo
{

	public static void main(String[] Args)
	{
		Scanner teclado=new Scanner(System.in);

		
		System.out.print(" Por favor ingrese el tamaño del eje x: ");
		int x=teclado.nextInt();
		System.out.print(" Por favor ingrese el tamaño del eje y: ");
		int y=teclado.nextInt();
		System.out.println("");
		
		
		for(int col=1; col <= x; col++)
			System.out.print(" *");

		System.out.print("\n");

		for(int fila=2; fila < y; fila++){
			System.out.print(" *");
			for(int col=2; col < x; col++)
				System.out.print("  ");

			System.out.print(" * \n");
		}
		for(int col=1; col <= x; col++)
			System.out.print(" *");
	}
}

