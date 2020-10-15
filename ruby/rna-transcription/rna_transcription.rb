=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end


def rna_transcription(dna)
  dna.split('')
  '' if dna.empty?
end

def sequence_rna_to_dna
  # * `G` -> `C`
  # * `C` -> `G`
  # * `T` -> `A`
  # * `A` -> `U`
end

