# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

# class Complement
class Complement
  def self.of_dna(sequence)
    sequence.tr('GCTA', 'CGAU')
  end
end

# p rna_transcription('ACGT')

# p rna_transcription('UGCACCAGAAUU') == 'ACGTGGTCTTAA'
