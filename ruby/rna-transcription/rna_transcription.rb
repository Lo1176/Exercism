=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end


def rna_transcription(dna)
  rna = []
  # dna.!empty?
  dna.chars.each do |value|
    if value == 'G'
      rna << 'C'
    elsif value == 'C'
      rna << 'G'
    elsif value == 'A'
      rna << 'T'
    else
      rna << 'A'
    end
  end
  rna.join
end

def sequence_rna_to_dna
  # * `G` -> `C`
  # * `C` -> `G`
  # * `A` -> `T`
  # * `U` -> `A`
end

p rna_transcription('ACGT')

p rna_transcription('UGCACCAGAAUU') == 'ACGTGGTCTTAA'


