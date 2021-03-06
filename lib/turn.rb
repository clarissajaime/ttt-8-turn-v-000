def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  puts display_board(board)
end

def input_to_index(input)
  user_input_position =  input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if !index.between?(0, 8)
    return false
  elsif position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false
    return true
  end
end
