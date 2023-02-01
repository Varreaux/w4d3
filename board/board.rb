class Board

    def initialize
        @rows = Array.new(8) {Array.new(8, 'X')}
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
        elsif (end_pos[0] < 0 || end_pos[0] > 7) || (end_pos[1] < 0 || end_pos[1] > 7)
            raise "you can't move there"
        end
    end

    def self.print_rows(rows)
        rows.each do |row|
            puts row.join(" ")
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

