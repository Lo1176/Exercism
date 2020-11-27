# frozen_string_literal: true

# class Matrix
class Matrix
  attr_reader :matrix_of_number

  def initialize(matrix_of_number)
    @matrix_of_number = matrix_of_number
  end

  def rows
    matrix_of_number
      .lines
      .map(&:split)
      .map { |ary| ary.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
