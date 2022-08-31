require_relative "piece"

class Pawn < Piece
    def moves

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
        pos = []
        if at_start_row?
            pos << [pos[0]+forward_dir, pos[1]] 
            pos << [pos[0]+ (2*forward_dir), pos[1]]
        else
            pos << [pos[0]+forward_dir, pos[1]] 
        end
        return pos
    end

    def side_attacks
        attacks = []
        moves = [[1,1], [1, -1]]
        moves.each do |move|
            row, col = move
            new_pos = [pos[0] + (forward_dir * row), pos[1] + (forward_dir * col)]
            if !(self[new_pos].color == color && self[new_pos].color == nil)
                attacks << new_pos
            end
        end
        attacks
    end
    
end 