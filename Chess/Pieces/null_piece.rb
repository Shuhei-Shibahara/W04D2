require_relative "piece"

class NullPiece < Piece
    include Singleton
    def initialize
        @color 
    end
end



