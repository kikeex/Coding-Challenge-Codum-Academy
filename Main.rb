require "./Canvas"
class Main

  def initialize
    @canvas= Canvas.new(0,0)
  end
  def start
    puts 'enter command: '
    command=gets.chomp.to_s.split(" ")
    runCommand(command)
    start
  end
  def printCanvas
    puts @canvas.to_s
  end
  def runCommand(command)
    char = command[0]
    command.delete_at(0);
    case char
    when 'C'
      w=command[0].to_i
      h=command[1].to_i
      @canvas= Canvas.new(w,h)
    when 'L'
      x1=command[0].to_i
      y1=command[1].to_i
      x2=command[2].to_i
      y2=command[3].to_i
      @canvas.createLine(x1,y1,x2,y2)
    when 'R'
      x1=command[0].to_i
      y1=command[1].to_i
      x2=command[2].to_i
      y2=command[3].to_i
      @canvas.createRectangle(x1,y1,x2,y2)
    when 'B'
      x=command[0].to_i
      y=command[1].to_i
      c=command[2].to_s
      @canvas.bucket(x,y,c)
    when 'Q'
      !exit
    else
      puts 'Opcion no validad'
    end
    printCanvas
  end
end

main=Main.new
main.start
