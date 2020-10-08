require './tic_tac_toe'

describe Game do
  describe "#win_check" do
    it "correctly checks if there is a win" do
      game = Game.new
      game.board = ['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' ']
      expect(game.win_check).to eql(true)
      game.board = ['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' ']
      expect(game.win_check).to eql(true)
      game.board = ['X', ' ', ' ', ' ', 'X', ' ', ' ', ' ', 'X']
      expect(game.win_check).to eql(true)
    end
  end

  describe "#change_board" do
    it "correctly changes the board" do
      game = Game.new
      game.board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
      game.current_player = game.player1
      game.player_position = 1
      game.change_board
      expect(game.board).to eql(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
      game.player_position = 2
      game.change_board
      expect(game.board).to eql(['X', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
  end
end