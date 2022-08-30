class Piece
    attr_reader :color
    attr_accessor :pos

    def initialize(color, pos)
        @color = color
        @pos = pos
    end

end
