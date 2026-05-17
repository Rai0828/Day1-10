class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @current_player = "X"
  end

  def display_board
    puts ""
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "---------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "---------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    puts ""
  end

  def player_move
    print "Player #{@current_player}, choose position (0-8): "
    position = gets.chomp.to_i

    if @board[position] == " "
      @board[position] = @current_player
    else
      puts "Position already taken!"
      player_move
    end
  end

  def winner?
    wins = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]

    wins.each do |combo|
      if @board[combo[0]] == @current_player &&
         @board[combo[1]] == @current_player &&
         @board[combo[2]] == @current_player

        return true
      end
    end

    false
  end

  def switch_player
    if @current_player == "X"
      @current_player = "O"
    else
      @current_player = "X"
    end
  end

  def play
    loop do
      display_board
      player_move

      if winner?
        display_board
        puts "Player #{@current_player} wins!"
        break
      end

      switch_player
    end
  end
end

game = TicTacToe.new
game.play