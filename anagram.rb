class Anagram
	def initialize()
      
	end

    def anagrams(list)
       @words_by_anagram = list.uniq.inject(Hash.new []) do |anagrams, word|
         key = word.chars.sort.join
         anagrams[key] += [word]
         anagrams
        end
         @words_by_anagram.delete_if {|_, words| words.count == 1}
    end

    def anagrams_values(list)
    	anagrams = anagrams(list)
    	anagrams.values
    end
end