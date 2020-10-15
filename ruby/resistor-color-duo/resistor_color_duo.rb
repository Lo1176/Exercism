=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  COLORS = %w[Black Brown Red Orange Yellow Green Blue Violet Grey White]
  def self.value(color)
    result = ''
    two_color = selected_color(color)
    two_color.each do |c|
      result += COLORS.index(c.capitalize).to_s
    end
    result.to_i
  end

  def self.selected_color(color)
    color.select { |c| color.index(c) < 2 }
  end
end
