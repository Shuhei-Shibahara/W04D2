require_relative "piece"
require_relative "slideable"

class Rook < Piece
    include Slideable
    move_dirs = [[0, 1], [0, -1], [1, 0], [-1, 0]]
end