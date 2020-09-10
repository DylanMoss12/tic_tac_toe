# frozen_string_literal: true

# this class is to play tic tac toe
class Game
  attr_accessor :board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    puts 'Who is naughts? (Enter name)'
    @player1 = gets.chomp
    puts 'Who is crosses? (Enter name)'
    @player2 = gets.chomp
  end

  def display_board
    print @board[0], '|', @board[1], '|', @board[2], "\n"
    print separator = '-----', "\n"
    print @board[3], '|', @board[4], '|', @board[5], "\n"
    print separator, "\n"
    print @board[6], '|', @board[7], '|', @board[8], "\n"
  end

  def win_check
    if @board[0] != ' ' && @board[0] == @board[1] && @board[0] == board[2]
      true
    elsif @board[3] != ' ' && @board[3] == @board[4] && @board[3] == board[5]
      true
    elsif @board[6] != ' ' && @board[6] == @board[7] && @board[6] == board[8]
      true
    elsif @board[0] != ' ' && @board[0] == @board[3] && @board[0] == board[6]
      true
    elsif @board[1] != ' ' && @board[1] == @board[4] && @board[1] == board[7]
      true
    elsif @board[2] != ' ' && @board[2] == @board[5] && @board[2] == board[8]
      true
    elsif @board[0] != ' ' && @board[0] == @board[4] && @board[0] == board[8]
      true
    elsif @board[2] != ' ' && @board[2] == @board[4] && @board[2] == board[6]
      true
    else false; end
  end

  def player_input
    valid = false
    until valid
      puts "#{@current_player} pick a position (1-9)"
      input = gets.chomp
      if ('1'..'9').to_a.include?(input)
        @player_position = input.to_i
        if @board[@player_position - 1] == ' '
          valid = true
        else
          puts 'This position is not available'
        end
      else
        puts 'Enter a valid position'
      end
    end
  end

  def change_board
    if @current_player == @player1
      @board[@player_position - 1] = 'X'
    else
      @board[@player_position - 1] = '○'
    end
  end

  def play
    i = 0
    @current_player = @player1
    until win_check || i == 9
      display_board
      player_input
      change_board
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
      i += 1
    end
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
    display_board
    if win_check
      puts "Congratulations #{@current_player}, you are the winner!"
    else
      puts "Draw!"
    end
  end
end

game = Game.new
game.play
