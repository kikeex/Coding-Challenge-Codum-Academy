require './Command'
puts 'Welcome to the Drawing Tool'
menu_loop = false
@command = Command.new
while (!menu_loop)
  puts 'Command C: Create a canvas given width and height - Example: C 20 4'
  puts 'Command L: Create a line from (x1,y1) to (x2,y2) - Example: L 1 2 6 2'
  puts 'Command R: Create a rectangle given corners - Example: R 16 1 20 3'
  puts 'Command B: Fill the area connected to (x,y) - Example: 10 3 o'
  puts 'Command Q: Quit the program - Example: Q'
  input_text = gets.chomp
  @command.read_input(input_text)
end
