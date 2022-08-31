module Slideable

    def moves
        new_moves = []
        move_dirs.each do |ele|
            row, col = ele
            new_moves += grow_unblocked_moves_in_dir(row, col)
        end
        new_moves
    end
    
    def grow_unblocked_moves_in_dir(dx,dy)
        position_in_dir = []
        new_pos = add_position(self.pos, [dx,dy] )
        until !self.board.valid_pos?(new_pos) 
            if board[new_pos] != nil
                if self.color != board[new_pos].color
                    position_in_dir << new_pos 
                    return position_in_dir
                else
                    return position_in_dir
                end
            end
            position_in_dir << new_pos 
            new_pos = add_position(new_pos, [dx,dy] )
        end
        position_in_dir
    end
        
    def add_position(pos1, pos2)
        [pos1.first + pos2.first, pos1.last + pos2.last]
    end


end