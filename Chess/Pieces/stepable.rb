module Stepable
    def moves
        new_position = []
        move_diffs.each do |change|
            new_pos = add_position(change, pos)
            new_position << new_pos if self.board.valid_pos?(new_pos) && board[new_pos].color != color
        end
        new_position
    end

    def add_position(pos1, pos2)
        [pos1.first + pos2.first, pos1.last + pos2.last]
    end
end