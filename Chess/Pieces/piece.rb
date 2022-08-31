class Piece
    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def inspect
        "<#piece: pos=#{@pos} color= #{@color}>"
    end

end
