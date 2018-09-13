require './canvas'

def main
	full_command = ''
	while full_command != 'Q' && full_command != 'q'
		print "enter command: "
		full_command = gets.chomp
		full_command_arr = full_command.split()
		command = full_command_arr[0]
		case command
		when 'C'
			w = full_command_arr[1].to_i
			h = full_command_arr[2].to_i
			canvas = Canvas.new(w, h)
			canvas.printCanvas
		when 'L'
			x1 = full_command_arr[1].to_i
			x2 = full_command_arr[2].to_i
			y1 = full_command_arr[3].to_i
			y2 = full_command_arr[4].to_i
			canvas.drawLine(x1, x2, y1, y2)
			canvas.printCanvas
		when 'R'
			x1 = full_command_arr[1].to_i
			x2 = full_command_arr[2].to_i
			y1 = full_command_arr[3].to_i
			y2 = full_command_arr[4].to_i
			canvas.drawRectangle(x1, x2, y1, y2)
			canvas.printCanvas
		when 'B'
			x = full_command_arr[1].to_i
			y = full_command_arr[2].to_i
			c = full_command_arr[3]
			canvas.bucketFill2(x, y, c)
			canvas.printCanvas
		else
			puts "Comando Incorrecto"
		end

	end
end

main


