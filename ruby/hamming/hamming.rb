class Hamming
def self.compute(strand_1, strand_2)

  if strand_1.length != strand_2.length
    raise ArgumentError
  end

  diff_count = 0
  dna_1 = strand_1.split("")
  dna_2 = strand_2.split("")

  (0...dna_1.length).each do |letter|
    diff_count += 1 if dna_1[letter] != dna_2[letter]
  end
  return diff_count
  end
end