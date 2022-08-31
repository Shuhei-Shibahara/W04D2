require "colorize"
require_relative "cursor"
require_relative "board"

class Display

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], @board)
    end

    def render
        @board.rows.each do |row|
            row.each do |piece|
                print piece.symbol
            end
            puts 
        end
        nil
    end
        
end
