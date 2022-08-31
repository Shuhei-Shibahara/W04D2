require_relative "pieces/piece"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8, NullPiece.instance) }
        (0...8).each do |i|
            if i == 0 || i == 1
                (0...8).each do |j|
                    @rows[i][j] = Piece.new(:white, self, [i,j])
                end
            elsif i == 6 || i == 7
                (0...8).each do |j|
                    @rows[i][j] = Piece.new(:black, self, [i,j])
                end
            end
        end
    end


    def [](position)
        row, col = position
        @rows[row][col]
    end

    def []=(position, value)
        row, col = position
        @rows[row][col] = value
    end

    def valid_pos?(pos)
        row,col = pos
        (0...8).include?(row) && (0...8).include?(col)
    end

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].color != nil && valid_pos?(end_pos) 
            self[start_pos], self[end_pos] = NullPiece.instance, self[start_pos]
            self[end_pos].pos = end_pos
        else 
            raise "Make a better move"
        end
    end

end




