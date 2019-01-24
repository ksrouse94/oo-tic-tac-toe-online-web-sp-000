class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
    ]
    
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(index)
    @index = index.to_i - 1
  end  
  
  def move(index, char = "X")
    @board[index] = char
  end
  
  def position_taken?(index)
    if (@board[index] == " " || @board[index] == "")
      return FALSE
    elsif @board[index] == NIL
      return FALSE
    else 
      return TRUE
    end
  end
  
  def valid_move?(index)
    if index.between?(0, 8) && position_taken?(index) == FALSE
      return TRUE
    end
  end  
  
  def turn 
    @input = gets.strip
    #input_to_index(input)
    #if valid_move?(input) == TRUE
      #move(input, current_player(board))
      #display_board
    #elsif valid_move?(board, input) != TRUE
      #turn
    #end 
  end 
  
  def turn_count
    counter = 0 
    @board.each do |char|
      if (char == "X" || char == "O")
        counter += 1 
      end
    end
    return counter
  end
  
  def current_player
    turn = turn_count
    if turn % 2 == 0 
      return "X"
    else
      return "O"
    end
  end  
end  