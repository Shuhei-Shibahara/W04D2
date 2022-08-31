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
end 