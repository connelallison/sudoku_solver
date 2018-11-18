require('minitest/autorun')
require('minitest/rg')
require_relative('../sudoku_solver')

class TestSudokuSolver < Minitest::Test

  def setup

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

# Check if the entire sudoku puzzle has been solved - with 1..9 exactly once in each row, column, and square.
  def test_complete_sudoku_true
    assert_equal(true, @c_sudoku_1.sudoku_complete?(@c_sudoku_1))
  end

  def test_complete_sudoku_false
    assert_equal(false, @sudoku_1.sudoku_complete?(@sudoku_1))
  end

# After changing a value in a row array, update the column arrays and square arrays to match.
  def test_reassign_one_value
    assert_equal(0, @sudoku_1.rows[2][4])
    assert_equal(0, @sudoku_1.columns[4][2])
    assert_equal(0, @sudoku_1.squares[1][7])
    @sudoku_1.rows[2][4] = 1
    @sudoku_1.reassign()
    assert_equal(1, @sudoku_1.rows[2][4])
    assert_equal(1, @sudoku_1.columns[4][2])
    assert_equal(1, @sudoku_1.squares[1][7])
  end
# After updating the entire rows array, update the entire columns array and squares array to match.
  def test_reassign_all_values
    @sudoku_1.rows = @c_sudoku_1_rows
    @sudoku_1.reassign()
    assert_equal(@c_sudoku_1.rows, @sudoku_1.rows)
    assert_equal(@c_sudoku_1.columns, @sudoku_1.columns)
    assert_equal(@c_sudoku_1.squares, @sudoku_1.squares)
  end

# Take a row and a column as arrays and return the value at the point where they intersect.
  def test_coordinate_from_array
    result = @sudoku_1.coordinate_from_array(@sudoku_1.rows[2], @sudoku_1.columns[4])
    assert_equal(0, result)
  end

# Take a row and a column as coordinates (row, column) and return the value at the point where they intersect.
  def test_coordinate
    result = @sudoku_1.coordinate(2, 4)
    assert_equal(0, result)
  end

# Given a row and a column, change the value of the point where they intersect, and update the arrays.
  def test_fill_in
    assert_equal(0, @sudoku_1.rows[2][4])
    assert_equal(0, @sudoku_1.columns[4][2])
    assert_equal(0, @sudoku_1.squares[1][7])
    @sudoku_1.fill_in(2, 4, 1)
    assert_equal(1, @sudoku_1.rows[2][4])
    assert_equal(1, @sudoku_1.columns[4][2])
    assert_equal(1, @sudoku_1.squares[1][7])
  end

# Return an array of the numbers in a row/column/square that are not yet filled in.
  def test_missing_numbers_some_missing
    result = @sudoku_1.missing_numbers(@sudoku_1.squares[3])
    assert_equal([1, 3, 5, 6], result)
  end

  def test_missing_numbers_none_missing
    result = @c_sudoku_1.missing_numbers(@c_sudoku_1.squares[3])
    assert_equal([], result)
  end

# Return an array of the points (as (row, column) co-ordinates) in a row/column/square that are not yet filled in.
def test_empty_spaces_some_empty
  result = @sudoku_1.empty_spaces(@sudoku_1.squares[1])
  assert_equal([[0, 5], [1, 3], [1, 5], [2, 4]], result)
end

def test_empty_spaces_none_empty
  result = @c_sudoku_1.empty_spaces(@c_sudoku_1.squares[1])
  assert_equal([], result)
end

# For a given square and a given missing number, get a list of the empty spaces, and check which of the rows and columns passing through the square contain the number.
# If a row/column contains the number, remove any empty spaces it passes through.
# After checking each row/column, if one empty space remains, return an array of [row, column, number]. If more than one empty space remains, return "skip".
  def test_crosshatch_success
    result = @sudoku_1.crosshatch(@sudoku_1.squares[1], 1)
    assert_equal([2, 4, 1], result)
  end

  def test_crosshatch_skip
    result = @sudoku_1.crosshatch(@sudoku_1.squares[1], 2)
    assert_equal("skip", result)
  end

  # For a given sudoku puzzle, for each square, find the missing numbers. For each missing number, attempt to crosshatch. If crosshatching returns an empty space and missing number, fill it in
  # Repeat for every missing number in every square until a pass has been made over the entire puzzle. Then repeat this until the puzzle has been solved.
  def test_solve_sudoku
    assert_equal(false, @sudoku_1.sudoku_complete?(@sudoku_1))
    @sudoku_1.solve_sudoku(@sudoku_1)
    assert_equal(true, @sudoku_1.sudoku_complete?(@sudoku_1))
  end

end
