class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(color)
    two_color = color.take(2)
    two_color.map { |c| COLORS.index(c) }.join.to_i
  end
end
