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
end

game = Game.new
