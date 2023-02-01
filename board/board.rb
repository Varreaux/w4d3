class Board

    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8)}

        place_piece
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
        if self[start_pos] == nil
            raise "there are no pieces at that position"
        elsif (end_pos[0] < 0 || end_pos[0] > 7) || (end_pos[1] < 0 || end_pos[1] > 7)
            raise "you can't move there"
        end

        piece_variable = self[start_pos]
        self[start_pos] = nil
        self[end_pos] = piece_variable

    end

    def self.print_rows(rows)
        rows.each do |row|
            puts row.join(" ")
        end
        return 
    end

    def place_piece

        (0..1).each do |i|
            (0..7).each do |j|
                self[[i, j]]= Piece.new(:black, self, [i, j])
            end
        end
    
        (6..7).each do |i|
            (0..7).each do |j|
                self[[i, j]]= Piece.new(:white, self, [i, j])
            end
        end

    end


end





 class Piece
    def initialize(color, board, pos)
        @color = color
        @board = Board.new 
        @pos = pos
    end
 end

