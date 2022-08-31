require_relative "piece"

class Pawn < Piece
    def moves
        forward_steps + side_attacks
    end

    def at_start_row?
        if pos[0] == 1 && color == :white || pos[0] == 6 && color == :black
            return true
        else
            false
        end
    end

    def forward_dir
        if color == :white 
            return 1
        else 
            return -1
        end
    end

    def forward_steps
        attacks = []
        moves = [[1,0], [2, 0]]
        moves.each do |move|
            row, col = move
            new_pos = [pos[0] + (forward_dir * row), pos[1]]
            if board[new_pos].color == nil
                attacks << new_pos
            end
        end
        attacks
    end
require "byebug"
    def side_attacks
        attacks = []
        moves = [[1,1], [1, -1]]
        moves.each do |move|
            row, col = move
            new_pos = [pos[0] + (forward_dir * row), pos[1] + (forward_dir * col)]
            if !(board[new_pos].color == color && board[new_pos].color == nil)
                attacks << new_pos
            end
        end
        attacks
    end
end 

b = Board.new
pawn = Pawn.new(:black, b, [4,1])
# p pawn.forward_steps
p pawn.moves