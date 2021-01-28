require_relative './bot'

module Rover
  def self.print_help
    puts %{
Command the robot with:
  L - turn left
  R - turn right
  S - step forward
  ? - this message
  Q - quit
    }
  end

  def self.start
    bot = Bot.new
    print_help
    option = 'X'
    until handle_option(option, bot)
      option = STDIN.getc
    end
  end

  def self.handle_option(option, bot)
    case option
    when 'L'
      bot.left
      puts bot
    when 'R'
      bot.right
      puts bot
    when 'S'
      bot.forward
      puts bot
    when 'Q'
      return true
    when '?'
      print_help  
      return false
    end

    false    
  end
end