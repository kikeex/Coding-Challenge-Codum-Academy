require 'matrix'

class Canvas
	attr_reader :canvas
	def initialize(w, h)
		@width = w
		@height = h
		@canvas = createCanvas
	end

	def createCanvas
		Matrix.build(@height + 1, @width + 1){" "}
	end

	def printCanvas
		drawBorder
		for i in (1..(@height))
			print '|'
			for j in (1..(@width))
				print @canvas[i,j]
			end
			print '|'
			puts ''	
		end
		drawBorder
	end

	def drawBorder
		(1..(@width+2)).each do |i|
			print '-'
		end
		puts ''	
	end

	def drawLine(x1, y1, x2, y2)
		if x1 == x2
			(y1..y2).each do |i|
				@canvas.send(:[]=,i, x1, 'x')
			end
		elsif y1 == y2
			(x1..x2).each do |i|
				@canvas.send(:[]=,y1, i, 'x')
			end
		else
			return -1
		end
	end

	def drawRectangle(x1, y1, x2, y2)
		drawLine(x1, y1, x2, y1)
		drawLine(x2, y1, x2, y2)
		drawLine(x1, y2, x2, y2)
		drawLine(x1, y1, x1, y2)
	end
end

