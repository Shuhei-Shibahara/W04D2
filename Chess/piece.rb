class Piece
    attr_reader :color, :board, :pos

    def initialize(color, pos)
        @color = color
        @board = Board.new
        @pos = pos
    end

end
