# frozen_string_literal: true

# class Matrix
class Matrix
  attr_reader :matrix_of_number

  def initialize(matrix_of_number)
    @matrix_of_number = matrix_of_number
  end

  def rows
    matrix_of_number
      .split("\n")
      .map { |string| string.split(' ') }
      .map { |ary| ary.map(&:to_i) }
  end

  def columns
    col = []
    i = 0
    while i < rows.first.size
      col << rows.map { |row| row[i] }
      i += 1
    end
    col
  end
end
