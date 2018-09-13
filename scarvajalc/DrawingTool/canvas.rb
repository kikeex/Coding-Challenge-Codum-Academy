require 'matrix'

class Canvas
	attr_accessor :canvas, :width, :height
	def initialize(w, h)
		@width = w
		@height = h
		@canvas = createCanvas
		xIn0Index
	end

	def createCanvas
		Matrix.build(@height + 1, @width + 1){" "}
	end

	def xIn0Index
		(0..(@height)).each do |i|
			@canvas.send(:[]=,i, 0, 'x')
		end
		(0..(@width)).each do |i|
			@canvas.send(:[]=,0, i, 'x')
		end
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
			puts "posiciones no validas para dibujar"
		end
	end

	def drawRectangle(x1, y1, x2, y2)
		drawLine(x1, y1, x2, y1)
		drawLine(x2, y1, x2, y2)
		drawLine(x1, y2, x2, y2)
		drawLine(x1, y1, x1, y2)
	end

	def bucketFill2(yy, xx, c)
		
		if @canvas[xx , yy] != 'x'
			stack = []
			stack.push([xx,yy])
			while(not stack.empty?)
				puts stack.to_s
				puts "-----"
				pos = stack.pop
				x = pos[0]
				y = pos[1]
				@canvas.send(:[]=, x, y, c)
				
				if (x + 1) <= @height && @canvas[x + 1, y] != 'x' && @canvas[x + 1, y] != c
					stack.push([x + 1, y])
					#puts "1"
				end
				if (x - 1) > 0 && @canvas[x - 1, y] != 'x' && @canvas[x - 1, y] != c
					stack.push([x - 1, y])
					#puts y.to_s + " 2"
				end
				if (y + 1) <= @width && @canvas[x, y + 1] != 'x' && @canvas[x, y + 1] != c
					stack.push([x, y + 1])
					#puts y.to_s + " 3"
				end
				if (y - 1) > 0 && @canvas[x, y - 1] != 'x' && @canvas[x, y - 1] != c
					stack.push([x, y - 1])
					#puts "4"
				end
			end
		
		end
	end
		

	def bucketFill1(y, x, c)
		if @canvas[x , y] != 'x'
			printCanvas
			@canvas.send(:[]=, x, y, c)
			if (x + 1) <= @width && @canvas[x + 1, y] != 'x' && @canvas[x + 1, y] != c
				bucketFill(x + 1, y, c)
			end
			if (x - 1) > 0 && @canvas[x - 1, y] != 'x' && @canvas[x - 1, y] != c
				bucketFill(x - 1, y, c)
			end
			if (y + 1) <= @height && @canvas[x, y + 1] != 'x' && @canvas[x, y + 1] != c
				bucketFill(x, y + 1, c)
			end
			if (y - 1) > 0 && @canvas[x, y - 1] != 'x' && @canvas[x, y - 1] != c
				bucketFill(x, y - 1, c)
			end
		end
	end

	def bucketFill(y, x, c, canv, w, h)
		if canv[x , y] != 'x'
			puts canv.class
			canv.send(:[]=, x, y, c)
			if ((x + 1) <= w && canv[x + 1, y] != 'x' && canv[x + 1, y] != c)
				canv = bucketFill(x + 1, y, c, canv, w, h)
			end
			if ((x - 1) > 0 && canv[x - 1, y] != 'x' && canv[x - 1, y] != c)
				canv = bucketFill(x - 1, y, c, canv, w, h)
			end
			if ((y + 1) <= h && canv[x, y + 1] != 'x' && canv[x, y + 1] != c)
				canv = bucketFill(x, y + 1, c, canv, w ,h)
			end
			if ((y - 1) > 0 && canv[x, y - 1] != 'x' && canv[x, y - 1] != c)
				canv = bucketFill(x, y - 1, c, canv, w, h)
			end
		end
		return canv
	end
end

