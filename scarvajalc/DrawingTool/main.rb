require './canvas'

def main
	canvas = [][]
	puts "enter command:"
	full_command = gets.chomp
	while full_command != 'Q' && full_command != 'q'
		full_command_arr = full_command.split()
		command = full_command_arr[0]

	end
end

canvas = Canvas.new(20, 4)
canvas.drawLine(1, 2, 6, 2)
canvas.drawLine(6, 3, 6, 4)
canvas.drawRectangle(16, 1, 20, 3)
canvas.bucketFill2(10, 3, 'o')
canvas.bucketFill2(1, 3, 'p')
canvas.printCanvas


