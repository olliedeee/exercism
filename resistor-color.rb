class ResistorColor

  CMAP = {
    Black: 0,
    Brown: 1,
    Red: 2,
    Orange: 3,
    Yellow: 4,
    Green: 5,
    Blue: 6,
    Violet: 7,
    Grey: 8,
    White: 9
  }

  CMAP = %w[black brown red orange yellow green blue violet grey white]

  def self.color_code(col)
    CMAP[:"#{col}"]
  end
end

ResistorColor.color_code("black")
ResistorColor.color_code("yellow")
ResistorColor.color_code("green")