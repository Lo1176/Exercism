# frozen_string_literal: true

# a class for triangle and methods to etermine if a triangle is equilateral, isosceles, or scalene.
class Triangle
  attr_reader :mesure

  def initialize(mesure)
    instance_variable_set(:@mesure, mesure) unless mesure.include?(0)
  end

  def equilateral?
    mesure.nil? ? false : mesure.uniq.size == 1
  end

  def isosceles?
    (mesure.nil? ? false : mesure.uniq.size <= 2) if triangle_inequality?
  end

  def scalene?
    mesure.uniq.size == 3 if triangle_inequality?
  end

  private

  def triangle_inequality?
    mesure.max <= mesure.min(2)[0] + mesure.min(2)[1]
  end
end
