# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  
def won?(board)
 WIN_COMBINATIONS.each do |i| 
 a = i[0]
 b = i[1]
 c = i[2]
 
 if board[a] == "X" && board[b] == "X" && board[c] == "X"
   return i
   elsif board[a] == "O" && board[b] == "O" && board[c] == "O"
   return i
  end
 end
 
 if full?(board) || board.all?{ |i| i == " " }
   false
 end
 
end

def full?(board)
  board.none?(" ")
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else false 
  end
end

def over?(board)
  if won?(board) 
    true
  elsif full?(board) 
  true
  else 
    false 
  end
end

def winner(board)
  i = won?(board)
  if board[i[0]] == "X"
     "X"
    elsif board[i[0]] == "O"
     "O"
  else nil
  end
end