class Complement

  def self.of_dna(dna)
    subs = {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U",
    }
    dna.gsub(/\w/, subs)
  end
end

p Complement.of_dna('C')