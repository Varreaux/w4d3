class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}
    end

    def [](pos)
        row, column = pos
        @rows[row][column]
    end

    def []=(pos, value)
        row, column = pos
        @rows[row][column] = value
    end

    def move_piece(start_pos, end_pos)
        if @rows[start_pos] == nil
            raise "there are no pieces at that position"
        end
    end
end

 class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board 
        @pos = pos
    end
 end