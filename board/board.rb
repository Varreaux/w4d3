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

    def place_piece
    
        self[[0, 0]]= '♜' 
        self[[0, 1]]= '♞' 
        self[[0, 2]]= '♝' 
        self[[0, 3]]= '♛' 
        self[[0, 4]]= '♚' 
        self[[0, 5]]= '♝' 
        self[[0, 6]]= '♞' 
        self[[0, 7]]= '♜' 
        self[[1, 0]]= '♙' 
        self[[1, 1]]= '♙' 
        self[[1, 2]]= '♙' 
        self[[1, 3]]= '♙' 
        self[[1, 4]]= '♙' 
        self[[1, 5]]= '♙' 
        self[[1, 6]]= '♙' 
        self[[1, 7]]= '♙' 

    end




end





 class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board 
        @pos = pos
    end
 end

