#MainClass
# Menu + CalledMethods
require './rectangle'

hor = '_'
ver = '|'

def menu
  puts "Coding Challenge"
  puts "Option C. Create a new canvas of wigth and height"
  puts "Option L. Draw horizontal line x character; from x1,y1 to x2,y2"
  puts "Option R. Draw horizontal, vertical or both lines x character; from x1,y1 to x2,y2"
  puts "Option B. Painting an area whith a especifies values"
  puts "Option Q. Exit"
  option =gets.chomp.upcase
  
  choice = case option
    when 'C'
      puts "choice as #{option}"
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


