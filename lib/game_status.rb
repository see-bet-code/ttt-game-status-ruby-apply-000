# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #First column
  [1,4,7], #Second column
  [2,5,8], #Third column
  [0,4,8], #Diagonal
  [2,4,6]  #Diagonal 2
]

def won?(board)
  win = WIN_COMBINATIONS.select{|win|
    board.values_at(*win).all?("X") || board.values_at(*win).all?("O")}
  if win.length == 0
    return false
  else
    return win.first
  end
end

def full?(board)
end

def draw?(board)
end

def over?(board)
end

def winner(board)
end
