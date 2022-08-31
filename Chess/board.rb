require_relative "pieces/piece.rb"
require_relative "pieces/rook.rb"
require_relative "pieces/queen.rb"
require_relative "pieces/king.rb"
require_relative "pieces/bishop.rb"
require_relative "pieces/knight.rb"
require_relative "pieces/pawn.rb"
require_relative "pieces/null_piece.rb"


class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8, NullPiece.instance) }
        (0...8).each do |i|
            (0...8).each do |j|
                if i == 1
                    @rows[i][j] = Pawn.new(:white, self, [i,j])
                elsif i == 6
                    @rows[i][j] = Pawn.new(:black, self, [i,j])
                elsif i == 0
                    if j == 0 || j == 7
                        @rows[i][j] = Rook.new(:white, self, [i,j])
                    elsif j == 1 || j == 6
                        @rows[i][j] = Knight.new(:white, self, [i,j])
                    elsif j == 2 || j == 5
                        @rows[i][j] = Bishop.new(:white, self, [i,j])
                    elsif j == 3
                        @rows[i][j] = Queen.new(:white, self, [i,j])
                    else
                        @rows[i][j] = King.new(:white, self, [i,j])
                    end
                elsif i == 7
                    if j == 0 || j == 7
                        @rows[i][j] = Rook.new(:black, self, [i,j])
                    elsif j == 1 || j == 6
                        @rows[i][j] = Knight.new(:black, self, [i,j])
                    elsif j == 2 || j == 5
                        @rows[i][j] = Bishop.new(:black, self, [i,j])
                    elsif j == 3
                        @rows[i][j] = Queen.new(:black, self, [i,j])
                    else
                        @rows[i][j] = King.new(:black, self, [i,j])
                    end
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

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].color != nil && valid_pos?(end_pos) 
            self[start_pos], self[end_pos] = NullPiece.instance, self[start_pos]
            self[end_pos].pos = end_pos
        else 
            raise "Make a better move"
        end
    end

end

b=Board.new
p b


