require_relative "slideable"
require_relative "piece"

class Queen < Piece
    include Slideable
    
    def symbol
        "♕".colorize(color)
    end
    
    def move_dirs
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