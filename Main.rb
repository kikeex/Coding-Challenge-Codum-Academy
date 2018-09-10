require "./Canvas"
class Main

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
      @canvas= Canvas.new(command)
      printCanvas
    when 'L'

    when 'R'

    when 'B'
    when 'Q'
      !exit
    else
      puts 'Opcion no validad'
    end
  end
end

main=Main.new
main.start
