# Coding challenge
## Introduction to the problem
You are free to implement any mechanism for feeding input into your solution. You should
provide sufficient evidence with unit tests that your solution is complete. As a minimum, please
use the provided test data to indicate that the solution works correctly. Any programming
language can be used to solve the problem.

## Drawing tool
You're given the task of writing a simple console version of a drawing program. At this time, the
functionality of the program is quite limited but this might change in the future. In a nutshell, the
program should work as follows:

1. Create a new canvas
2. Start drawing on the canvas by issuing various commands
3. Quit

At the moment, the program should support the following commands:

C w h Should create a new canvas of width w and height h.
L x1 y1 x2 y2 Should create a new line from (x1,y1) to (x2,y2). Currently only horizontal
or vertical lines are supported. Horizontal and vertical lines will be drawn
using the 'x' character.
R x1 y1 x2 y2 Should create a new rectangle, whose upper left corner is (x1,y1) and
lower right corner is (x2,y2). Horizontal and vertical lines will be drawn
using the 'x' character.
B x y c Should fill the entire area connected to (x,y) with "colour" c. The behaviour
of this is the same as that of the "bucket fill" tool in paint programs.
Q Should quit the program.

## Instrucciones
1.- Crear una rama <feature/SU-NOMBRE>
2.- Todos los commits deben ir directamente a esa rama
3.- Al completar el desafío, debe generar un PR
4.- El PR debe respetar el formato
