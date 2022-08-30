require_relative "piece"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        (0...8).each do |i|
            if i == 0 || i == 1
                (0...8).each do |j|
                    @rows[i][j] = Piece.new(:white, [i,j])
                end
            elsif i == 6 || i == 7
                (0...8).each do |j|
                    @rows[i][j] = Piece.new(:black, [i,j])
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


end