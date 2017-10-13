def first_anagram?(word1, word2)
  arrays = word1.chars.permutation(5).to_a
  anagrams = arrays.map {|anagram| anagram.join}.uniq
  anagrams.include?(word2)
end

# p first_anagram?("elvis","levis")

def second_anagram?(word1, word2)
  a = word1.chars
  b = word2.chars
  word1.chars do |char1|
    if word2.include?(char1)
      a.delete(char1)
      b.delete(char1)
    end
  end
  p a
  p b
    a.empty? && b.empty?
end

# p second_anagram?("elvis", "lavis")

def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

# p third_anagram?("elvis", "levis")


def fourth_anagrams?(word1, word2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  word1.chars.each do |char|
    hash1[char] += 1
  end

  word2.chars.each do |char|
    hash2[char] += 1
  end

  hash1 == hash2
end


p fourth_anagrams?("elvis", "levis")
