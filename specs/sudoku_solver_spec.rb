require('minitest/autorun')
require('minitest/rg')
require_relative('../sudoku_solver')

class TestSudokuSolver < Minitest::Test

  def setup
# remember you need instance variables within the setup
    #
    # ## TEST UNSOLVED SUDOKU
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
    #
    # ## TEST COMPLETED SUDOKU
    # @c_row_1 = [1, 7, 2, 9, 8, 3, 5, 6, 4]
    # @c_row_2 = [4, 6, 8, 5, 7, 2, 9, 1, 3]
    # @c_row_3 = [5, 3, 9, 6, 1, 4, 8, 7, 2]
    # @c_row_4 = [2, 1, 3, 8, 5, 6, 4, 9, 7]
    # @c_row_5 = [8, 4, 6, 3, 9, 7, 2, 5, 1]
    # @c_row_6 = [9, 5, 7, 2, 4, 1, 3, 8, 6]
    # @c_row_7 = [6, 8, 4, 7, 2, 5, 1, 3, 9]
    # @c_row_8 = [3, 9, 1, 4, 6, 8, 7, 2, 5]
    # @c_row_9 = [7, 2, 5, 1, 3, 9, 6, 4, 8]
    #
    # @c_column_1 = [@c_row_1[0], @c_row_2[0], @c_row_3[0], @c_row_4[0], @c_row_5[0], @c_row_6[0], @c_row_7[0], @c_row_8[0], @c_row_9[0]]
    # @c_column_2 = [@c_row_1[1], @c_row_2[1], @c_row_3[1], @c_row_4[1], @c_row_5[1], @c_row_6[1], @c_row_7[1], @c_row_8[1], @c_row_9[1]]
    # @c_column_3 = [@c_row_1[2], @c_row_2[2], @c_row_3[2], @c_row_4[2], @c_row_5[2], @c_row_6[2], @c_row_7[2], @c_row_8[2], @c_row_9[2]]
    # @c_column_4 = [@c_row_1[3], @c_row_2[3], @c_row_3[3], @c_row_4[3], @c_row_5[3], @c_row_6[3], @c_row_7[3], @c_row_8[3], @c_row_9[3]]
    # @c_column_5 = [@c_row_1[4], @c_row_2[4], @c_row_3[4], @c_row_4[4], @c_row_5[4], @c_row_6[4], @c_row_7[4], @c_row_8[4], @c_row_9[4]]
    # @c_column_6 = [@c_row_1[5], @c_row_2[5], @c_row_3[5], @c_row_4[5], @c_row_5[5], @c_row_6[5], @c_row_7[5], @c_row_8[5], @c_row_9[5]]
    # @c_column_7 = [@c_row_1[6], @c_row_2[6], @c_row_3[6], @c_row_4[6], @c_row_5[6], @c_row_6[6], @c_row_7[6], @c_row_8[6], @c_row_9[6]]
    # @c_column_8 = [@c_row_1[7], @c_row_2[7], @c_row_3[7], @c_row_4[7], @c_row_5[7], @c_row_6[7], @c_row_7[7], @c_row_8[7], @c_row_9[7]]
    # @c_column_9 = [@c_row_1[8], @c_row_2[8], @c_row_3[8], @c_row_4[8], @c_row_5[8], @c_row_6[8], @c_row_7[8], @c_row_8[8], @c_row_9[8]]
    #
    # @c_square_1 = [@c_row_1[0], @c_row_1[1], @c_row_1[2], @c_row_2[0], @c_row_2[1], @c_row_2[2], @c_row_3[0], @c_row_3[1], @c_row_3[2]]
    # @c_square_2 = [@c_row_1[3], @c_row_1[4], @c_row_1[5], @c_row_2[3], @c_row_2[4], @c_row_2[5], @c_row_3[3], @c_row_3[4], @c_row_3[5]]
    # @c_square_3 = [@c_row_1[6], @c_row_1[7], @c_row_1[8], @c_row_2[6], @c_row_2[7], @c_row_2[8], @c_row_3[6], @c_row_3[7], @c_row_3[8]]
    # @c_square_4 = [@c_row_4[0], @c_row_4[1], @c_row_4[2], @c_row_5[0], @c_row_5[1], @c_row_5[2], @c_row_6[0], @c_row_6[1], @c_row_6[2]]
    # @c_square_5 = [@c_row_4[3], @c_row_4[4], @c_row_4[5], @c_row_5[3], @c_row_5[4], @c_row_5[5], @c_row_6[3], @c_row_6[4], @c_row_6[5]]
    # @c_square_6 = [@c_row_4[6], @c_row_4[7], @c_row_4[8], @c_row_5[6], @c_row_5[7], @c_row_5[8], @c_row_6[6], @c_row_6[7], @c_row_6[8]]
    # @c_square_7 = [@c_row_7[0], @c_row_7[1], @c_row_7[2], @c_row_8[0], @c_row_8[1], @c_row_8[2], @c_row_9[0], @c_row_9[1], @c_row_9[2]]
    # @c_square_8 = [@c_row_7[3], @c_row_7[4], @c_row_7[5], @c_row_8[3], @c_row_8[4], @c_row_8[5], @c_row_9[3], @c_row_9[4], @c_row_9[5]]
    # @c_square_9 = [@c_row_7[6], @c_row_7[7], @c_row_7[8], @c_row_8[6], @c_row_8[7], @c_row_8[8], @c_row_9[6], @c_row_9[7], @c_row_9[8]]
    #
    # @sudoku_1 = [@row_1, @row_2, @row_3, @row_4, @row_5, @row_6, @row_7, @row_8, @row_9]
    # @c_sudoku_1 = [@c_row_1, @c_row_2, @c_row_3, @c_row_4, @c_row_5, @c_row_6, @c_row_7, @c_row_8, @c_row_9]
    #
    # @test_unit = [4, 7, 6, 3, 8, 9, 2, 1, 5]


    @sudoku_1_rows = [
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
    @sudoku_1 = Sudoku.new(@sudoku_1_rows)

    @c_sudoku_1_rows = [
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

    @c_sudoku_1 = Sudoku.new(@c_sudoku_1_rows)
  end


# Check if a square, row, or column contains every number from 1..9 exactly once.
  def test_complete_square_true
    assert_equal(true, @c_sudoku_1.unit_complete?(@c_sudoku_1.squares[0]))
  end

  def test_complete_row_true
    assert_equal(true, @c_sudoku_1.unit_complete?(@c_sudoku_1.rows[3]))
  end

  def test_complete_column_true
    assert_equal(true, @c_sudoku_1.unit_complete?(@c_sudoku_1.columns[7]))
  end

  def test_complete_square_false
    assert_equal(false, @sudoku_1.unit_complete?(@sudoku_1.squares[0]))
  end

  def test_complete_row_false
    assert_equal(false, @sudoku_1.unit_complete?(@sudoku_1.rows[3]))
  end

  def test_complete_column_false
    assert_equal(false, @sudoku_1.unit_complete?(@sudoku_1.columns[7]))
  end

  def test_complete_sudoku_true
    assert_equal(true, @c_sudoku_1.sudoku_complete?(@c_sudoku_1))
  end

  def test_complete_sudoku_false
    assert_equal(false, @sudoku_1.sudoku_complete?(@sudoku_1))
  end
  # def test_in_square_true
  #   in_square(@square_1, )
  # end
  #
  # def test_in_square_false
  #
  # end
  #
  # def test_crosshatch_row_true
  #
  #
  # end


end
