class Canvas
  attr_accessor :width, :height, :canvas
  def initialize(width, height)
    @width = width
    @height = height
    @canvas = Array.new(height.to_i+2) { |i| Array.new(width.to_i+2) { |i| ' ' }}
  end
  def create_canvas()
    @canvas.each_with_index do 
      |row, index1| row.each_with_index do |column, index2| if (index1.to_i == 0) || (index1.to_i == height.to_i+1) then @canvas[index1][index2] = '-' elsif (index1.to_i != 0 && index2.to_i == 0) || (index1.to_i != 0 && index2.to_i ==width.to_i+1) then @canvas[index1][index2] = '|' end
    end
  end
  end
  def draw_canvas()
    canvas_graph = ''
    @canvas.each_with_index do |row, index1| row.each_with_index do |column, index2| if @canvas[index1][index2] == '-' then canvas_graph+= @canvas[index1][index2] elsif @canvas[index1][index2] == '|' && index2.to_i == 0 then canvas_graph+= "\n" + @canvas[index1][index2] elsif @canvas[index1][index2] == ' ' then canvas_graph+= @canvas[index1][index2] elsif @canvas[index1][index2] == '|' && index2.to_i == width.to_i+1 then canvas_graph+= @canvas[index1][index2] + "\n" elsif @canvas[index1][index2] == 'X' || @canvas[index1][index2] == 'o' then canvas_graph+= @canvas[index1][index2] end 
      end
    end
  puts canvas_graph
  end
  def draw_line(x1, y1, x2, y2)
      if x1.to_i > 0 && x2.to_i > 0 && y1.to_i < width.to_i+1 && y2.to_i < width.to_i+1 
        if x1.to_i == x2.to_i 
        then @canvas.each_with_index do |row, index1| row.each_with_index do |column, index2| if x1.to_i == index2 && index1 <= y2.to_i && index1 >= y1.to_i then if index1 > 0 then @canvas[index1][index2] = 'X' end end   
            end
          end
        elsif y1.to_i == y2.to_i
            then @canvas.each_with_index do |row, index1| row.each_with_index do |column, index2| if y1.to_i == index1 && index2 <= x2.to_i && index2 >= x1.to_i then if index2 > 0 then @canvas[index1][index2] = 'X' end end   
            end
          end 
        end 
      end
  end
  def draw_rectangle(x1, y1, x2, y2)
    draw_line(x1, y1, x2, y1)
    draw_line(x1, y1, x1, y2)
    draw_line(x1, y2, x2, y2)
    draw_line(x2, y1, x2, y2)
  end
  def fill_canvas(x1, y1, c)
    if x1.to_i > 0 && y1.to_i > 0
      then @canvas.each_with_index do |row, index1| row.each_with_index do |column, index2| 
            end
          end
    end
  end
end
