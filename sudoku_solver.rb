# @row_1 = [0, 0, 2, 9, 8, 0, 5, 0, 0]
# @row_2 = [4, 0, 0, 0, 7, 0, 0, 1, 3]
# @row_3 = [0, 3, 9, 6, 0, 4, 0, 7, 0]
# @row_4 = [2, 0, 0, 0, 5, 6, 4, 0, 0]
# @row_5 = [8, 4, 0, 3, 0, 0, 2, 0, 1]
# @row_6 = [9, 0, 7, 0, 0, 1, 0, 8, 6]
# @row_7 = [6, 0, 0, 7, 0, 5, 1, 3, 0]
# @row_8 = [0, 9, 1, 4, 0, 0, 0, 0, 5]
# @row_9 = [0, 2, 0, 0, 3, 0, 6, 0, 8]
#
# @column_1 = [@row_1[0], @row_2[0], @row_3[0], @row_4[0], @row_5[0], @row_6[0], @row_7[0], @row_8[0], @row_9[0]]
# @column_2 = [@row_1[1], @row_2[1], @row_3[1], @row_4[1], @row_5[1], @row_6[1], @row_7[1], @row_8[1], @row_9[1]]
# @column_3 = [@row_1[2], @row_2[2], @row_3[2], @row_4[2], @row_5[2], @row_6[2], @row_7[2], @row_8[2], @row_9[2]]
# @column_4 = [@row_1[3], @row_2[3], @row_3[3], @row_4[3], @row_5[3], @row_6[3], @row_7[3], @row_8[3], @row_9[3]]
# @column_5 = [@row_1[4], @row_2[4], @row_3[4], @row_4[4], @row_5[4], @row_6[4], @row_7[4], @row_8[4], @row_9[4]]
# @column_6 = [@row_1[5], @row_2[5], @row_3[5], @row_4[5], @row_5[5], @row_6[5], @row_7[5], @row_8[5], @row_9[5]]
# @column_7 = [@row_1[6], @row_2[6], @row_3[6], @row_4[6], @row_5[6], @row_6[6], @row_7[6], @row_8[6], @row_9[6]]
# @column_8 = [@row_1[7], @row_2[7], @row_3[7], @row_4[7], @row_5[7], @row_6[7], @row_7[7], @row_8[7], @row_9[7]]
# @column_9 = [@row_1[8], @row_2[8], @row_3[8], @row_4[8], @row_5[8], @row_6[8], @row_7[8], @row_8[8], @row_9[8]]
#
# @square_1 = [@row_1[0], @row_1[1], @row_1[2], @row_2[0], @row_2[1], @row_2[2], @row_3[0], @row_3[1], @row_3[2]]
# @square_2 = [@row_1[3], @row_1[4], @row_1[5], @row_2[3], @row_2[4], @row_2[5], @row_3[3], @row_3[4], @row_3[5]]
# @square_3 = [@row_1[6], @row_1[7], @row_1[8], @row_2[6], @row_2[7], @row_2[8], @row_3[6], @row_3[7], @row_3[8]]
# @square_4 = [@row_4[0], @row_4[1], @row_4[2], @row_5[0], @row_5[1], @row_5[2], @row_6[0], @row_6[1], @row_6[2]]
# @square_5 = [@row_4[3], @row_4[4], @row_4[5], @row_5[3], @row_5[4], @row_5[5], @row_6[3], @row_6[4], @row_6[5]]
# @square_6 = [@row_4[6], @row_4[7], @row_4[8], @row_5[6], @row_5[7], @row_5[8], @row_6[6], @row_6[7], @row_6[8]]
# @square_7 = [@row_7[0], @row_7[1], @row_7[2], @row_8[0], @row_8[1], @row_8[2], @row_9[0], @row_9[1], @row_9[2]]
# @square_8 = [@row_7[3], @row_7[4], @row_7[5], @row_8[3], @row_8[4], @row_8[5], @row_9[3], @row_9[4], @row_9[5]]
# @square_9 = [@row_7[6], @row_7[7], @row_7[8], @row_8[6], @row_8[7], @row_8[8], @row_9[6], @row_9[7], @row_9[8]]
#
# @sudoku_1 = [@row_1, @row_2, @row_3, @row_4, @row_5, @row_6, @row_7, @row_8, @row_9]

# p @row_1.sort() == [1, 2, 3, 4, 5, 6, 7, 8, 9]

class Sudoku
  attr_accessor :sudoku, :rows, :columns, :squares, :row_associations, :column_associations, :square_associations, :complete_unit#, :row_1, :row_2, :row_4, :row_5, :row_6, :row_7, :row_8, :row_9, :column_1, :column_2, :column_4, :column_5, :column_6, :column_7, :column_8, :column_9, :square_1, :square_2, :square_4, :square_5, :square_6, :square_7, :square_8, :square_9
  def initialize(sudoku_rows)

    # @row_1 = sudoku_rows[0]
    # @row_2 = sudoku_rows[1]
    # @row_3 = sudoku_rows[2]
    # @row_4 = sudoku_rows[3]
    # @row_5 = sudoku_rows[4]
    # @row_6 = sudoku_rows[5]
    # @row_7 = sudoku_rows[6]
    # @row_8 = sudoku_rows[7]
    # @row_9 = sudoku_rows[8]
    #
    # @rows = [@row_1, @row_2, @row_3, @row_4, @row_5, @row_6, @row_7, @row_8, @row_9]
    #
    # @column_1 = [@row_1[0], @row_2[0], @row_3[0], @row_4[0], @row_5[0], @row_6[0], @row_7[0], @row_8[0], @row_9[0]]
    # @column_2 = [@row_1[1], @row_2[1], @row_3[1], @row_4[1], @row_5[1], @row_6[1], @row_7[1], @row_8[1], @row_9[1]]
    # @column_3 = [@row_1[2], @row_2[2], @row_3[2], @row_4[2], @row_5[2], @row_6[2], @row_7[2], @row_8[2], @row_9[2]]
    # @column_4 = [@row_1[3], @row_2[3], @row_3[3], @row_4[3], @row_5[3], @row_6[3], @row_7[3], @row_8[3], @row_9[3]]
    # @column_5 = [@row_1[4], @row_2[4], @row_3[4], @row_4[4], @row_5[4], @row_6[4], @row_7[4], @row_8[4], @row_9[4]]
    # @column_6 = [@row_1[5], @row_2[5], @row_3[5], @row_4[5], @row_5[5], @row_6[5], @row_7[5], @row_8[5], @row_9[5]]
    # @column_7 = [@row_1[6], @row_2[6], @row_3[6], @row_4[6], @row_5[6], @row_6[6], @row_7[6], @row_8[6], @row_9[6]]
    # @column_8 = [@row_1[7], @row_2[7], @row_3[7], @row_4[7], @row_5[7], @row_6[7], @row_7[7], @row_8[7], @row_9[7]]
    # @column_9 = [@row_1[8], @row_2[8], @row_3[8], @row_4[8], @row_5[8], @row_6[8], @row_7[8], @row_8[8], @row_9[8]]
    #
    # @columns = [@column_1, @column_2, @column_3, @column_4, @column_5, @column_6, @column_7, @column_8, @column_9]
    #
    #
    #
    # @square_1 = [@row_1[0], @row_1[1], @row_1[2], @row_2[0], @row_2[1], @row_2[2], @row_3[0], @row_3[1], @row_3[2]]
    # @square_2 = [@row_1[3], @row_1[4], @row_1[5], @row_2[3], @row_2[4], @row_2[5], @row_3[3], @row_3[4], @row_3[5]]
    # @square_3 = [@row_1[6], @row_1[7], @row_1[8], @row_2[6], @row_2[7], @row_2[8], @row_3[6], @row_3[7], @row_3[8]]
    # @square_4 = [@row_4[0], @row_4[1], @row_4[2], @row_5[0], @row_5[1], @row_5[2], @row_6[0], @row_6[1], @row_6[2]]
    # @square_5 = [@row_4[3], @row_4[4], @row_4[5], @row_5[3], @row_5[4], @row_5[5], @row_6[3], @row_6[4], @row_6[5]]
    # @square_6 = [@row_4[6], @row_4[7], @row_4[8], @row_5[6], @row_5[7], @row_5[8], @row_6[6], @row_6[7], @row_6[8]]
    # @square_7 = [@row_7[0], @row_7[1], @row_7[2], @row_8[0], @row_8[1], @row_8[2], @row_9[0], @row_9[1], @row_9[2]]
    # @square_8 = [@row_7[3], @row_7[4], @row_7[5], @row_8[3], @row_8[4], @row_8[5], @row_9[3], @row_9[4], @row_9[5]]
    # @square_9 = [@row_7[6], @row_7[7], @row_7[8], @row_8[6], @row_8[7], @row_8[8], @row_9[6], @row_9[7], @row_9[8]]
    #
    # @squares = [@square_1, @square_2, @square_3, @square_4, @square_5, @square_6, @square_7, @square_8, @square_9]

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

    @row_associations = {
      @rows[0] => [[0, 0], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 8]],
      @rows[1] => [[1, 0], [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8]],
      @rows[2] => [[2, 0], [2, 1], [2, 2], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [2, 8]],
      @rows[3] => [[3, 0], [3, 1], [3, 2], [3, 3], [3, 4], [3, 5], [3, 6], [3, 7], [3, 8]],
      @rows[4] => [[4, 0], [4, 1], [4, 2], [4, 3], [4, 4], [4, 5], [4, 6], [4, 7], [4, 8]],
      @rows[5] => [[5, 0], [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7], [5, 8]],
      @rows[6] => [[6, 0], [6, 1], [6, 2], [6, 3], [6, 4], [6, 5], [6, 6], [6, 7], [6, 8]],
      @rows[7] => [[7, 0], [7, 1], [7, 2], [7, 3], [7, 4], [7, 5], [7, 6], [7, 7], [7, 8]],
      @rows[8] => [[8, 0], [8, 1], [8, 2], [8, 3], [8, 4], [8, 5], [8, 6], [8, 7], [8, 8]]
    }

    @column_associations = {
      @columns[0] => [[0, 0], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [8, 0]],
      @columns[1] => [[0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1]],
      @columns[2] => [[0, 2], [1, 2], [2, 2], [3, 2], [4, 2], [5, 2], [6, 2], [7, 2], [8, 2]],
      @columns[3] => [[0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [8, 3]],
      @columns[4] => [[0, 4], [1, 4], [2, 4], [3, 4], [4, 4], [5, 4], [6, 4], [7, 4], [8, 4]],
      @columns[5] => [[0, 5], [1, 5], [2, 5], [3, 5], [4, 5], [5, 5], [6, 5], [7, 5], [8, 5]],
      @columns[6] => [[0, 6], [1, 6], [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [8, 6]],
      @columns[7] => [[0, 7], [1, 7], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [8, 7]],
      @columns[8] => [[0, 8], [1, 8], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8], [8, 8]]
    }

    @square_associations = {
      @squares[0] => [[@rows[0], @rows[1], @rows[2]], [@columns[0], @columns[1], @columns[2]], [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]],
      @squares[1] => [[@rows[0], @rows[1], @rows[2]], [@columns[3], @columns[4], @columns[5]], [[0, 3], [0, 4], [0, 5], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5]]],
      @squares[2] => [[@rows[0], @rows[1], @rows[2]], [@columns[6], @columns[7], @columns[8]], [[0, 6], [0, 7], [0, 8], [1, 6], [1, 7], [1, 8], [2, 6], [2, 7], [2, 8]]],
      @squares[3] => [[@rows[3], @rows[4], @rows[5]], [@columns[0], @columns[1], @columns[2]], [[3, 0], [3, 1], [3, 2], [4, 0], [4, 1], [4, 2], [5, 0], [5, 1], [5, 2]]],
      @squares[4] => [[@rows[3], @rows[4], @rows[5]], [@columns[3], @columns[4], @columns[5]], [[3, 3], [3, 4], [3, 5], [4, 3], [4, 4], [4, 5], [5, 3], [5, 4], [5, 5]]],
      @squares[5] => [[@rows[3], @rows[4], @rows[5]], [@columns[6], @columns[7], @columns[8]], [[3, 6], [3, 7], [3, 8], [4, 6], [4, 7], [4, 8], [5, 6], [5, 7], [5, 8]]],
      @squares[6] => [[@rows[6], @rows[7], @rows[8]], [@columns[0], @columns[1], @columns[2]], [[6, 0], [6, 1], [6, 2], [7, 0], [7, 1], [7, 2], [8, 0], [8, 1], [8, 2]]],
      @squares[7] => [[@rows[6], @rows[7], @rows[8]], [@columns[3], @columns[4], @columns[5]], [[6, 3], [6, 4], [6, 5], [7, 3], [7, 4], [7, 5], [8, 3], [8, 4], [8, 5]]],
      @squares[8] => [[@rows[6], @rows[7], @rows[8]], [@columns[6], @columns[7], @columns[8]], [[6, 6], [6, 7], [6, 8], [7, 6], [7, 7], [7, 8], [8, 6], [8, 7], [8, 8]]]
    }

    @sudoku = [@rows, @columns, @squares]

    @complete_unit = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  end

  def unit_complete?(unit)
    return unit.sort() == @complete_unit
  end

  def sudoku_complete?(sudoku)
    return sudoku.sudoku.all?() { |units| units.all?() { |unit| sudoku.unit_complete?(unit) == true } }
  end

  ## Really not convinced this is the best way of going about things.
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
    empty_spaces = @square_associations[square][2].select() {
      |coordinates| (coordinate(coordinates[0], coordinates[1]) == 0)
    }
    return empty_spaces
  end

  def fill_in(row, column, num)
    @rows[row][column] = num
    reassign()
  end

  def crosshatch(square, num)
    # p square
    empty_spaces = empty_spaces(square)
    p empty_spaces
    missing_numbers = @complete_unit.reject() { |number| square.include?(number) }
    # p missing_numbers
    @square_associations[square][0].each() { |row| if (row.include?(num))
      empty_spaces.reject!() { |coordinates| @row_associations[row].include?(coordinates) }
      p empty_spaces
    end
    }
    @square_associations[square][1].each() { |column| if (column.include?(num))
      empty_spaces.reject!() { |coordinates| @column_associations[column].include?(coordinates) }
      p empty_spaces
    end
    }
    if (empty_spaces.count() == 1)
      # @rows[empty_spaces[0][0]][empty_spaces[0][1]] =  num
      # reassign()
      # p square
      # p square
      # p square
      # p square
      # missing_numbers = @complete_unit.reject() { |number| square.include?(number) }
      p missing_numbers
      return [empty_spaces[0][0], empty_spaces[0][1], num]
    end
  end

  def solve_square(square)
    missing_numbers = missing_numbers(square)
    p missing_numbers
    p square
    change = crosshatch(square, missing_numbers[3])
    p square
    missing_numbers = missing_numbers(square)
    p missing_numbers
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

# p sudoku_1.square_1

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

# p c_sudoku_1.square_1
# @row_1 = [0, 0, 2, 9, 8, 0, 5, 0, 0]
# @row_2 = [4, 0, 0, 0, 7, 0, 0, 1, 3]
# @row_3 = [0, 3, 9, 6, 0, 4, 0, 7, 0]
# @row_4 = [2, 0, 0, 0, 5, 6, 4, 0, 0]
# @row_5 = [8, 4, 0, 3, 0, 0, 2, 0, 1]
# @row_6 = [9, 0, 7, 0, 0, 1, 0, 8, 6]
# @row_7 = [6, 0, 0, 7, 0, 5, 1, 3, 0]
# @row_8 = [0, 9, 1, 4, 0, 0, 0, 0, 5]
# @row_9 = [0, 2, 0, 0, 3, 0, 6, 0, 8]




# p sudoku_1.unit_complete?(sudoku_1.rows[0])
# p sudoku_1.sudoku.all?() { |units| units.all?() { |unit| sudoku_1.unit_complete?(unit) == true } }
# p c_sudoku_1.sudoku.all?() { |units| units.all?() { |unit| c_sudoku_1.unit_complete?(unit) == true } }
# p sudoku_1.sudoku_complete?(sudoku_1)
# p c_sudoku_1.sudoku_complete?(c_sudoku_1)
#
# p sudoku_1.squares[0]
# p sudoku_1.complete_unit.reject() { |num| sudoku_1.squares[0].include?(num) }

# p sudoku_1.squares[0][0].object_id() == sudoku_1.rows[0][0].object_id()
#
# sudoku_1.rows[0][0] = 3
# sudoku_1.reassign()
# p sudoku_1.rows[0][0]
# p sudoku_1.squares[0][0]
# p sudoku_1.squares[0][0].object_id() == sudoku_1.rows[0][0].object_id()

# p sudoku_1.rows[2][4]
# p sudoku_1.columns[4][2]
# p sudoku_1.squares[1][7]
# sudoku_1.rows[2][sudoku_1.columns.index(sudoku_1.columns[4])] = 1
# sudoku_1.reassign()
# p sudoku_1.rows[2][4]
# p sudoku_1.columns[4][2]
# p sudoku_1.squares[1][7]
#
# p sudoku_1

# p sudoku_1.missing_numbers(sudoku_1.squares[3])
# p sudoku_1.fill_in(sudoku_1.rows[2], sudoku_1.columns[4], 1)

# p sudoku_1.square_associations[sudoku_1.squares[1]][0]
# p sudoku_1.square_associations[sudoku_1.squares[1]][0].select() { |row| row.include?(1)}

# sudoku_1.rows[2][4]

# p sudoku_1.empty_spaces(sudoku_1.squares[1])
# p c_sudoku_1.empty_spaces(c_sudoku_1.squares[1])

# p [1, 2][0]

# p sudoku_1.coordinate(2, 4)

# p sudoku_1.squares[1]
# p sudoku_1.empty_spaces(sudoku_1.squares[1])
p sudoku_1.square_associations[sudoku_1.squares[1]][2]
p sudoku_1.rows[2]
p sudoku_1.columns[4]
p sudoku_1.squares[1]
change = sudoku_1.crosshatch(sudoku_1.squares[1], 1)
p sudoku_1.square_associations[sudoku_1.squares[1]][2]
sudoku_1.fill_in(change[0], change[1], change[2])
p sudoku_1.square_associations[sudoku_1.squares[1]][2]
p sudoku_1.missing_numbers(sudoku_1.squares[1])
p sudoku_1.rows[2]
p sudoku_1.columns[4]
p sudoku_1.squares[1]
p sudoku_1.missing_numbers(sudoku_1.rows[2])
p sudoku_1.missing_numbers(sudoku_1.columns[4])
p sudoku_1.missing_numbers(sudoku_1.squares[1])
change = sudoku_1.crosshatch(sudoku_1.squares[1], 3)
sudoku_1.fill_in(change[0], change[1], change[2])
p sudoku_1.rows[2]
p sudoku_1.columns[4]
p sudoku_1.squares[1]
# p sudoku_1.squares[1]

# p sudoku_1.squares[1]
# sudoku_1.solve_square(sudoku_1.squares[1])
# p sudoku_1.squares[1]
  # empty_spaces = sudoku_1.empty_spaces(sudoku_1.squares[1])
  # p empty_spaces
  # sudoku_1.square_associations[sudoku_1.squares[1]][0].each() { |row| if (row.include?(1))
  #   empty_spaces.reject!() { |coordinates| @row_associations[sudoku_1.squares[1]].include?(coordinates) }
  # end
  # }
  # p empty_spaces
