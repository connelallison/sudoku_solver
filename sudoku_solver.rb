
class Sudoku
  attr_accessor :sudoku, :rows, :columns, :squares, :row_associations, :column_associations, :square_associations, :complete_unit#, :row_1, :row_2, :row_4, :row_5, :row_6, :row_7, :row_8, :row_9, :column_1, :column_2, :column_4, :column_5, :column_6, :column_7, :column_8, :column_9, :square_1, :square_2, :square_4, :square_5, :square_6, :square_7, :square_8, :square_9
  def initialize(sudoku_rows)

    @rows = [sudoku_rows[0], sudoku_rows[1], sudoku_rows[2], sudoku_rows[3], sudoku_rows[4], sudoku_rows[5], sudoku_rows[6], sudoku_rows[7], sudoku_rows[8]]

    @columns = [[@rows[0][0], @rows[1][0], @rows[2][0], @rows[3][0], @rows[4][0], @rows[5][0], @rows[6][0], @rows[7][0], @rows[8][0]],
    [@rows[0][1], @rows[1][1], @rows[2][1], @rows[3][1], @rows[4][1], @rows[5][1], @rows[6][1], @rows[7][1], @rows[8][1]],
    [@rows[0][2], @rows[1][2], @rows[2][2], @rows[3][2], @rows[4][2], @rows[5][2], @rows[6][2], @rows[7][2], @rows[8][2]],
    [@rows[0][3], @rows[1][3], @rows[2][3], @rows[3][3], @rows[4][3], @rows[5][3], @rows[6][3], @rows[7][3], @rows[8][3]],
    [@rows[0][4], @rows[1][4], @rows[2][4], @rows[3][4], @rows[4][4], @rows[5][4], @rows[6][4], @rows[7][4], @rows[8][4]],
    [@rows[0][5], @rows[1][5], @rows[2][5], @rows[3][5], @rows[4][5], @rows[5][5], @rows[6][5], @rows[7][5], @rows[8][5]],
    [@rows[0][6], @rows[1][6], @rows[2][6], @rows[3][6], @rows[4][6], @rows[5][6], @rows[6][6], @rows[7][6], @rows[8][6]],
    [@rows[0][7], @rows[1][7], @rows[2][7], @rows[3][7], @rows[4][7], @rows[5][7], @rows[6][7], @rows[7][7], @rows[8][7]],
    [@rows[0][8], @rows[1][8], @rows[2][8], @rows[3][8], @rows[4][8], @rows[5][8], @rows[6][8], @rows[7][8], @rows[8][8]]
  ]

    @squares = [[@rows[0][0], @rows[0][1], @rows[0][2], @rows[1][0], @rows[1][1], @rows[1][2], @rows[2][0], @rows[2][1], @rows[2][2]],
    [@rows[0][3], @rows[0][4], @rows[0][5], @rows[1][3], @rows[1][4], @rows[1][5], @rows[2][3], @rows[2][4], @rows[2][5]],
    [@rows[0][6], @rows[0][7], @rows[0][8], @rows[1][6], @rows[1][7], @rows[1][8], @rows[2][6], @rows[2][7], @rows[2][8]],
    [@rows[3][0], @rows[3][1], @rows[3][2], @rows[4][0], @rows[4][1], @rows[4][2], @rows[5][0], @rows[5][1], @rows[5][2]],
    [@rows[3][3], @rows[3][4], @rows[3][5], @rows[4][3], @rows[4][4], @rows[4][5], @rows[5][3], @rows[5][4], @rows[5][5]],
    [@rows[3][6], @rows[3][7], @rows[3][8], @rows[4][6], @rows[4][7], @rows[4][8], @rows[5][6], @rows[5][7], @rows[5][8]],
    [@rows[6][0], @rows[6][1], @rows[6][2], @rows[7][0], @rows[7][1], @rows[7][2], @rows[8][0], @rows[8][1], @rows[8][2]],
    [@rows[6][3], @rows[6][4], @rows[6][5], @rows[7][3], @rows[7][4], @rows[7][5], @rows[8][3], @rows[8][4], @rows[8][5]],
    [@rows[6][6], @rows[6][7], @rows[6][8], @rows[7][6], @rows[7][7], @rows[7][8], @rows[8][6], @rows[8][7], @rows[8][8]]
  ]

    @row_associations = [
      [[0, 0], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 8]],
      [[1, 0], [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8]],
      [[2, 0], [2, 1], [2, 2], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [2, 8]],
      [[3, 0], [3, 1], [3, 2], [3, 3], [3, 4], [3, 5], [3, 6], [3, 7], [3, 8]],
      [[4, 0], [4, 1], [4, 2], [4, 3], [4, 4], [4, 5], [4, 6], [4, 7], [4, 8]],
      [[5, 0], [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7], [5, 8]],
      [[6, 0], [6, 1], [6, 2], [6, 3], [6, 4], [6, 5], [6, 6], [6, 7], [6, 8]],
      [[7, 0], [7, 1], [7, 2], [7, 3], [7, 4], [7, 5], [7, 6], [7, 7], [7, 8]],
      [[8, 0], [8, 1], [8, 2], [8, 3], [8, 4], [8, 5], [8, 6], [8, 7], [8, 8]]
    ]

    @column_associations = [
      [[0, 0], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [8, 0]],
      [[0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1]],
      [[0, 2], [1, 2], [2, 2], [3, 2], [4, 2], [5, 2], [6, 2], [7, 2], [8, 2]],
      [[0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [8, 3]],
      [[0, 4], [1, 4], [2, 4], [3, 4], [4, 4], [5, 4], [6, 4], [7, 4], [8, 4]],
      [[0, 5], [1, 5], [2, 5], [3, 5], [4, 5], [5, 5], [6, 5], [7, 5], [8, 5]],
      [[0, 6], [1, 6], [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [8, 6]],
      [[0, 7], [1, 7], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [8, 7]],
      [[0, 8], [1, 8], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8], [8, 8]]
    ]

    @square_associations = [
      [[@rows[0], @rows[1], @rows[2]], [@columns[0], @columns[1], @columns[2]], [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]],
      [[@rows[0], @rows[1], @rows[2]], [@columns[3], @columns[4], @columns[5]], [[0, 3], [0, 4], [0, 5], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5]]],
      [[@rows[0], @rows[1], @rows[2]], [@columns[6], @columns[7], @columns[8]], [[0, 6], [0, 7], [0, 8], [1, 6], [1, 7], [1, 8], [2, 6], [2, 7], [2, 8]]],
      [[@rows[3], @rows[4], @rows[5]], [@columns[0], @columns[1], @columns[2]], [[3, 0], [3, 1], [3, 2], [4, 0], [4, 1], [4, 2], [5, 0], [5, 1], [5, 2]]],
      [[@rows[3], @rows[4], @rows[5]], [@columns[3], @columns[4], @columns[5]], [[3, 3], [3, 4], [3, 5], [4, 3], [4, 4], [4, 5], [5, 3], [5, 4], [5, 5]]],
      [[@rows[3], @rows[4], @rows[5]], [@columns[6], @columns[7], @columns[8]], [[3, 6], [3, 7], [3, 8], [4, 6], [4, 7], [4, 8], [5, 6], [5, 7], [5, 8]]],
      [[@rows[6], @rows[7], @rows[8]], [@columns[0], @columns[1], @columns[2]], [[6, 0], [6, 1], [6, 2], [7, 0], [7, 1], [7, 2], [8, 0], [8, 1], [8, 2]]],
      [[@rows[6], @rows[7], @rows[8]], [@columns[3], @columns[4], @columns[5]], [[6, 3], [6, 4], [6, 5], [7, 3], [7, 4], [7, 5], [8, 3], [8, 4], [8, 5]]],
      [[@rows[6], @rows[7], @rows[8]], [@columns[6], @columns[7], @columns[8]], [[6, 6], [6, 7], [6, 8], [7, 6], [7, 7], [7, 8], [8, 6], [8, 7], [8, 8]]]
    ]

    @sudoku = [@rows, @columns, @squares]
    @complete_unit = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def unit_complete?(unit)
    return unit.sort() == @complete_unit
  end

  def sudoku_complete?(sudoku)
    return sudoku.sudoku.all?() { |units| units.all?() { |unit| sudoku.unit_complete?(unit) == true } }
  end

  ## Really not convinced this is the best way of going about things, but I guess it works.
  def reassign()
    @columns = [[@rows[0][0], @rows[1][0], @rows[2][0], @rows[3][0], @rows[4][0], @rows[5][0], @rows[6][0], @rows[7][0], @rows[8][0]],
    [@rows[0][1], @rows[1][1], @rows[2][1], @rows[3][1], @rows[4][1], @rows[5][1], @rows[6][1], @rows[7][1], @rows[8][1]],
    [@rows[0][2], @rows[1][2], @rows[2][2], @rows[3][2], @rows[4][2], @rows[5][2], @rows[6][2], @rows[7][2], @rows[8][2]],
    [@rows[0][3], @rows[1][3], @rows[2][3], @rows[3][3], @rows[4][3], @rows[5][3], @rows[6][3], @rows[7][3], @rows[8][3]],
    [@rows[0][4], @rows[1][4], @rows[2][4], @rows[3][4], @rows[4][4], @rows[5][4], @rows[6][4], @rows[7][4], @rows[8][4]],
    [@rows[0][5], @rows[1][5], @rows[2][5], @rows[3][5], @rows[4][5], @rows[5][5], @rows[6][5], @rows[7][5], @rows[8][5]],
    [@rows[0][6], @rows[1][6], @rows[2][6], @rows[3][6], @rows[4][6], @rows[5][6], @rows[6][6], @rows[7][6], @rows[8][6]],
    [@rows[0][7], @rows[1][7], @rows[2][7], @rows[3][7], @rows[4][7], @rows[5][7], @rows[6][7], @rows[7][7], @rows[8][7]],
    [@rows[0][8], @rows[1][8], @rows[2][8], @rows[3][8], @rows[4][8], @rows[5][8], @rows[6][8], @rows[7][8], @rows[8][8]]
  ]
    @squares = [[@rows[0][0], @rows[0][1], @rows[0][2], @rows[1][0], @rows[1][1], @rows[1][2], @rows[2][0], @rows[2][1], @rows[2][2]],
    [@rows[0][3], @rows[0][4], @rows[0][5], @rows[1][3], @rows[1][4], @rows[1][5], @rows[2][3], @rows[2][4], @rows[2][5]],
    [@rows[0][6], @rows[0][7], @rows[0][8], @rows[1][6], @rows[1][7], @rows[1][8], @rows[2][6], @rows[2][7], @rows[2][8]],
    [@rows[3][0], @rows[3][1], @rows[3][2], @rows[4][0], @rows[4][1], @rows[4][2], @rows[5][0], @rows[5][1], @rows[5][2]],
    [@rows[3][3], @rows[3][4], @rows[3][5], @rows[4][3], @rows[4][4], @rows[4][5], @rows[5][3], @rows[5][4], @rows[5][5]],
    [@rows[3][6], @rows[3][7], @rows[3][8], @rows[4][6], @rows[4][7], @rows[4][8], @rows[5][6], @rows[5][7], @rows[5][8]],
    [@rows[6][0], @rows[6][1], @rows[6][2], @rows[7][0], @rows[7][1], @rows[7][2], @rows[8][0], @rows[8][1], @rows[8][2]],
    [@rows[6][3], @rows[6][4], @rows[6][5], @rows[7][3], @rows[7][4], @rows[7][5], @rows[8][3], @rows[8][4], @rows[8][5]],
    [@rows[6][6], @rows[6][7], @rows[6][8], @rows[7][6], @rows[7][7], @rows[7][8], @rows[8][6], @rows[8][7], @rows[8][8]]
  ]
    @square_associations = [
    [[@rows[0], @rows[1], @rows[2]], [@columns[0], @columns[1], @columns[2]], [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]],
    [[@rows[0], @rows[1], @rows[2]], [@columns[3], @columns[4], @columns[5]], [[0, 3], [0, 4], [0, 5], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5]]],
    [[@rows[0], @rows[1], @rows[2]], [@columns[6], @columns[7], @columns[8]], [[0, 6], [0, 7], [0, 8], [1, 6], [1, 7], [1, 8], [2, 6], [2, 7], [2, 8]]],
    [[@rows[3], @rows[4], @rows[5]], [@columns[0], @columns[1], @columns[2]], [[3, 0], [3, 1], [3, 2], [4, 0], [4, 1], [4, 2], [5, 0], [5, 1], [5, 2]]],
    [[@rows[3], @rows[4], @rows[5]], [@columns[3], @columns[4], @columns[5]], [[3, 3], [3, 4], [3, 5], [4, 3], [4, 4], [4, 5], [5, 3], [5, 4], [5, 5]]],
    [[@rows[3], @rows[4], @rows[5]], [@columns[6], @columns[7], @columns[8]], [[3, 6], [3, 7], [3, 8], [4, 6], [4, 7], [4, 8], [5, 6], [5, 7], [5, 8]]],
    [[@rows[6], @rows[7], @rows[8]], [@columns[0], @columns[1], @columns[2]], [[6, 0], [6, 1], [6, 2], [7, 0], [7, 1], [7, 2], [8, 0], [8, 1], [8, 2]]],
    [[@rows[6], @rows[7], @rows[8]], [@columns[3], @columns[4], @columns[5]], [[6, 3], [6, 4], [6, 5], [7, 3], [7, 4], [7, 5], [8, 3], [8, 4], [8, 5]]],
    [[@rows[6], @rows[7], @rows[8]], [@columns[6], @columns[7], @columns[8]], [[6, 6], [6, 7], [6, 8], [7, 6], [7, 7], [7, 8], [8, 6], [8, 7], [8, 8]]]
  ]
    @sudoku = [@rows, @columns, @squares]
  end

  def coordinate_from_array(row_array, column_array)
    return row_array[@columns.index(column_array)]
  end

  def coordinate(row, column)
    return @rows[row][column]
  end

  def missing_numbers(unit)
    @complete_unit.reject() { |num| unit.include?(num) }
  end

  def empty_spaces(square)
    empty_spaces = @square_associations[@squares.index(square)][2].select() {
      |coordinates| (coordinate(coordinates[0], coordinates[1]) == 0)
    }
    if (empty_spaces != nil)
      return empty_spaces
    else
      return "skip"
    end
  end

  def fill_in(row, column, num)
    @rows[row][column] = num
    reassign()
  end

  def crosshatch(square, num)
    empty_spaces = empty_spaces(square)
    # p "Before elimination: #{empty_spaces}"
    unless (empty_spaces == "skip")
      if (empty_spaces.count() > 1)
        @square_associations[@squares.index(square)][0].each() { |row| #p "Row #{@rows.index(row)}"
          if (row.include?(num))
          empty_spaces.delete_if() { |coordinates| @row_associations[@rows.index(row)].include?(coordinates) }
          # p "After elimination by row #{@rows.index(row)}: #{empty_spaces}"
        end
        }
      end
      if (empty_spaces.count() > 1)
        @square_associations[@squares.index(square)][1].each() { |column| #p "Column #{@columns.index(column)}"
          if (column.include?(num))
          empty_spaces.delete_if() { |coordinates| @column_associations[@columns.index(column)].include?(coordinates) }
          # p "After elimination by column #{@columns.index(column)}: #{empty_spaces}"
        end
        }
      end
      if (empty_spaces.count() == 1)
        return [empty_spaces[0][0], empty_spaces[0][1], num]
      end
    end
      return "skip"
  end

  def solve_sudoku(sudoku)
    sudoku.rows.each() { |row| p row }
    count = 0
    p "Number of passes: #{count}"
    until (sudoku.sudoku_complete?(sudoku) == true)
      (0..8).each() { |squarenum|
        # p sudoku_1.missing_numbers(sudoku_1.squares[squarenum])
        # p sudoku_1.squares[squarenum]
        # p sudoku_1.empty_spaces(sudoku_1.squares[1])
        sudoku.missing_numbers(sudoku.squares[squarenum]).each() { |num|
          # p "Checking #{num}"
          change = sudoku.crosshatch(sudoku.squares[squarenum], num)
          unless (change == "skip")
            sudoku.fill_in(change[0], change[1], change[2])
          end
          # p sudoku_1.missing_numbers(sudoku_1.squares[squarenum])
          # p sudoku_1.squares[1]
          # p sudoku_1.empty_spaces(sudoku_1.squares[1])
        }
      }
      count += 1
      break if count >= 10
      p "-------------------------"
      sudoku.rows.each() { |row| p row }
      p "Number of passes: #{count}"
    end
    if (sudoku.sudoku_complete?(sudoku) == true)
      p "Sudoku puzzle complete!"
    end
  end


end

sudoku_1_rows = [
  [0, 0, 2, 9, 8, 0, 5, 0, 0],
  [4, 0, 0, 0, 7, 0, 0, 1, 3],
  [0, 3, 9, 6, 0, 4, 0, 7, 0],
  [2, 0, 0, 0, 5, 6, 4, 0, 0],
  [8, 4, 0, 3, 0, 0, 2, 0, 1],
  [9, 0, 7, 0, 0, 1, 0, 8, 6],
  [6, 0, 0, 7, 0, 5, 1, 3, 0],
  [0, 9, 1, 4, 0, 0, 0, 0, 5],
  [0, 2, 0, 0, 3, 0, 6, 0, 8]
]
sudoku_1 = Sudoku.new(sudoku_1_rows)

c_sudoku_1_rows = [
[1, 7, 2, 9, 8, 3, 5, 6, 4],
[4, 6, 8, 5, 7, 2, 9, 1, 3],
[5, 3, 9, 6, 1, 4, 8, 7, 2],
[2, 1, 3, 8, 5, 6, 4, 9, 7],
[8, 4, 6, 3, 9, 7, 2, 5, 1],
[9, 5, 7, 2, 4, 1, 3, 8, 6],
[6, 8, 4, 7, 2, 5, 1, 3, 9],
[3, 9, 1, 4, 6, 8, 7, 2, 5],
[7, 2, 5, 1, 3, 9, 6, 4, 8]
]
c_sudoku_1 = Sudoku.new(c_sudoku_1_rows)

## WORKING METHOD TO SOLVE SUDOKU PUZZLE
# sudoku_1.solve_sudoku(sudoku_1)


## WORKING CODE TO CROSSHATCH A GIVEN SQUARE
# sudoku_1.rows.each() { |row| p row }
# p sudoku_1.missing_numbers(sudoku_1.squares[1])
# p sudoku_1.squares[1]
# # p sudoku_1.empty_spaces(sudoku_1.squares[1])
# sudoku_1.missing_numbers(sudoku_1.squares[1]).each() { |num|
#   p "Checking #{num}"
#   p change = sudoku_1.crosshatch(sudoku_1.squares[1], num)
#   unless (change == "skip")
#     sudoku_1.fill_in(change[0], change[1], change[2])
#   end
#   p sudoku_1.missing_numbers(sudoku_1.squares[1])
#   p sudoku_1.squares[1]
#   # p sudoku_1.empty_spaces(sudoku_1.squares[1])
# }
# p "-------------------------"
# sudoku_1.rows.each() { |row| p row }


## WORKING CODE TO SOLVE SUDOKU PUZZLE
# sudoku_1.rows.each() { |row| p row }
# count = 0
# p "Number of passes: #{count}"
# until (sudoku_1.sudoku_complete?(sudoku_1) == true)
#   (0..8).each() { |squarenum|
#     # p sudoku_1.missing_numbers(sudoku_1.squares[squarenum])
#     # p sudoku_1.squares[squarenum]
#     # p sudoku_1.empty_spaces(sudoku_1.squares[1])
#     sudoku_1.missing_numbers(sudoku_1.squares[squarenum]).each() { |num|
#       # p "Checking #{num}"
#       change = sudoku_1.crosshatch(sudoku_1.squares[squarenum], num)
#       unless (change == "skip")
#         sudoku_1.fill_in(change[0], change[1], change[2])
#       end
#       # p sudoku_1.missing_numbers(sudoku_1.squares[squarenum])
#       # p sudoku_1.squares[1]
#       # p sudoku_1.empty_spaces(sudoku_1.squares[1])
#     }
#   }
#   count += 1
#   break if count >= 10
#   p "-------------------------"
#   sudoku_1.rows.each() { |row| p row }
#   p "Number of passes: #{count}"
# end
# if (sudoku_1.sudoku_complete?(sudoku_1) == true)
#   p "Sudoku puzzle complete!"
# end
