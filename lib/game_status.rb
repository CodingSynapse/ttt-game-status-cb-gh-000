# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row
  [3, 4, 5], # middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left columns
  [1, 4, 7], #middle columns
  [2 ,5, 8], #right columns
  [2, 4, 6], #diagonal
  [0, 4, 8]  #diagonal
]

def won?(board)
    WIN_COMBINATIONS.each do |index|
      combo_0 = index[0]
      combo_1 = index[1]
      combo_2 = index[2]

      position_1 = board[combo_0]
      position_2 = board[combo_1]
      position_3 = board[combo_2]

      winningcombo = position_1 == "X" && position_2 =="X" && position_3 == "X" || "O" && position_2 =="O" && position_3 == "O"

      if winningcombo
        return index

      elsif board.include? " "
        return false
      else
        false
      end
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
