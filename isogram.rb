class Isogram
  
  def self.isogram?(input)
    input = input.gsub(/\s/, "") # can use reg ex or if it's just strings can use quotes
    input = input.gsub(/-/, "") # can use reg ex or if it's just strings can use quotes
    input.upcase.split(//).uniq.count == input.length
    # p input.length
    # p "#{input.upcase.split(//).uniq.count}" + "uniqs"
    # p "#{input.upcase.split(//).uniq}" 
  end

  # check if all letters are unique
  # if so return true, else return false
  # reduces input to only unique letters, if unique letters input are equal to the total number of inputs then it is an iso

end

p Isogram.isogram?("abc")
p "---"
p Isogram.isogram?("six-year-old")
p "---"
p Isogram.isogram?("Emily Jung Schwartzkopf")
p "---"

