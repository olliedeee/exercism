class Anagram
  def initialize(letters)
    @orig = letters
    @letters = letter_sorter(letters)
  end

  def letter_sorter(word)
    word.downcase.chars.sort.join
  end

  def match(letter_array)
    matches = []
    letter_array.each do |w|
      if letter_sorter(w) == @letters
        matches << w unless w.downcase == @orig.downcase
      end
    end
    matches
  end
end
p Anagram.new("hippo").match(["hipop", "abc"])
