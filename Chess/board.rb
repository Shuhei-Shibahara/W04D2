require_relative "piece"

class Board
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        @rows.each_with_index do |row, i|
            if i == 0 || i == 1 || i == 6 || i == 7
                row.each_with_index do |ele, j|
                    row[j] = Piece.new(color, pos)
                end
            end
        end
    end
end