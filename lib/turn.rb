board =[]
index = 0

# display Tic Tac Toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# change input to match board index
def input_to_index(user_input)
  user_input.to_i - 1
end
# move position on board
def move(board, index, player_character = "X")
  board[index] = player_character
end
# check if the position is taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end
# check if the move is valid
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  end
end

# ask player to enter turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    while !valid_move?(board, index)
      puts "Please enter 1-9:"
      break if valid_move(board, index)
    end
      
    end
  end
end
