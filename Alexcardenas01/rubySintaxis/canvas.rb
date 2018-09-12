#MainClass
# Menu + CalledMethods
require './rectangle'

hor = '_'
ver = '|'
@rectangle = Rectangle.new

def menu
  puts "Coding Challenge"
  puts "Option C. Create a new canvas of wigth and height"
  puts "Option L. Draw horizontal line x character; from x1,y1 to x2,y2"
  puts "Option R. Draw horizontal, vertical or both lines x character; from x1,y1 to x2,y2"
  puts "Option B. Painting an area whith a especifies values"
  puts "Option Q. Exit"
  option =gets.chomp.upcase
  
  #getValues
  puts 'Write the width rectangle '
  w = gets.chomp.to_i
  puts 'Write the heignt rectangle '
  h = gets.chomp.to_i
  choice = case option
    when 'C'
      puts "choice as #{option}"
      @rectangle1.rectangleStucture(w, h)
      when 2
      puts "choice as #{option}"
      when 3
      puts "choice as #{option}"
      when 4
      puts "choice as #{option}"
      when 5
      puts "choice as #{option}"
      else
        puts "Incorrect option"
      end 
end
menu


