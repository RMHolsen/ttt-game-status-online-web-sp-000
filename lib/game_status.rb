# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def full?(board)
  board.all? {|index| index != " "}
end 

# Define your WIN_COMBINATIONS constant
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
  
def won?(board)
  for win_con in WIN_COMBINATIONS do
    winv1 = win_con[0]
    winv2 = win_con[1]
    winv3 = win_con[2]
    
    position_1 = board[winv1]
    position_2 = board[winv2]
    position_3 = board[winv3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_con
    else 
      false
    end 
  end 
end 

def draw?(board)
  if full?(board) == true && won?(board) != true
    true
  else 
    false
  end 
end 