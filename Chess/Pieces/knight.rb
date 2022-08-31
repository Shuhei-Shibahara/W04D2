require_relative "piece"
require_relative "stepable"

class Knight < Piece
    include Stepable
    def symbol
        "♘".colorize(color)
    end
    
    def move_diffs
        pairs = []
        arr = [-2, -1, 1, 2]
        arr.each do |el1|
            arr.each do |el2|
                pairs << [el1, el2] if el1.abs != el2.abs
            end
        end
        pairs
    end
end