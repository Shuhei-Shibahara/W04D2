require_relative "piece"
require_relative "slideable"

class Bishop < Piece
    include Slideable
    move_dirs = [[1, 1], [-1, -1], [-1, 1], [1, -1]]
end