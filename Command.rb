require './Canvas'
class Command
  def read_input(text)
  	command_text = Array.new
  	command_text = text.split(' ')
  	select_command(command_text)
  end
  def select_command(command)
  	case command[0]
  	when 'C'
    width = command[1]
    height = command[2]
	  @canvas = Canvas.new(width, height)
	  @canvas.create_canvas  
    @canvas.draw_canvas
	when 'L'
    x1 = command[1]
    y1 = command[2]
    x2 = command[3]
    y2 = command[4]
	  @canvas.draw_line(x1, y1, x2, y2)
    @canvas.draw_canvas
   when 'R'
    x1 = command[1]
    y1 = command[2]
    x2 = command[3]
    y2 = command[4]
    @canvas.draw_rectangle(x1, y1, x2 ,y2)
    @canvas.draw_canvas
   when 'B'
    x1 = command[1]
    y1 = command[2]
    c = command[3]
    @canvas.fill_canvas(x1, y1, c)
    @canvas.draw_canvas
   when 'Q'
    puts 'You quit the Drawing Tool'
    exit
    else
      puts 'Unrecognized command. Try again'
  	end
  end
end
	