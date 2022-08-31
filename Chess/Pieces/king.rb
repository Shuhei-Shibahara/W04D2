require_relative "piece"
require_relative "stepable"


class King < Piece
    include Stepable
    def symbol
        "♔".colorize(color)
    end
    
    def move_diffs
        pairs = []
        arr = [-1,0,1]
        arr.each do |el1|
            arr.each do |el2|
                pairs << [el1,el2] if !(el1 == 0 && el2 == 0) 
            end
        end
        pairs
    end
end

