require './anagram'

words = gets.chomp.split(' ').to_a
anagram = Anagram.new
print anagram.anagrams_values(words); puts