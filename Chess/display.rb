require "colorize"
require_relative "cursor"
require_relative "board"

class Display

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], @board)
    end

    def render
        @board.rows.each_with_index do |row, i|
            row.each_with_index do |piece, j|
                if [i,j] == @cursor.cursor_pos
                    print piece.symbol.colorize(:light_blue)
                else
                    print piece.symbol
                end
            end
            puts 
        end
        nil
    end
        
end
