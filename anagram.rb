# The First


class Anagram
    # we instantiate the word that we will be comparing to array of words
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    # we define the method that receives the array of letters
    def match(array)
        result = []

        #break down the array into individual word
        array.each do |array_word|

            # compare the array word's length to the provided word length and if they match
            if @word.length == array_word.length

                # use a locally defined sort_letters method to compare each sorted array word to the sorted word
                if sort_letters(@word) == sort_letters(array_word)
                    # add the matching array_word to our result array
                    result << array_word 
                end
            end
        end

        # return our result
        result
        puts result
    end

    # define the sort_letters method that receives an argument
    def sort_letters(word)
        word.chars.sort.join
    end
end

Word1 = Anagram.new("listen")
puts Word1.word
# => listen

Word1.match(%w[enlists google inlets banana])
# => inlets



# The Second Method
def anagrams(word, array)
    word = word.downcase
    sorted_word = word.chars.sort.join
    result = []
    array.each do |possible_anagram|
        possible_anagram = possible_anagram.downcase
        if possible_anagram.length == word.length && possible_anagram != word
            if possible_anagram.chars.sort.join == sorted_word
                result << possible_anagram
            end
        end    
    end
    result
end

pp anagrams("listen", %w[enlist google inlets banana])
# => ["enlist", "inlets"]

#The Third Way
def anagrams(word, array)
  word = word.downcase
  sorted_word = word.chars.sort.join
  array.select do |possible_anagram|
    possible_anagram = possible_anagram.downcase
    possible_anagram.length == word.length &&
    possible_anagram != word &&
    possible_anagram.chars.sort.join == sorted_word
  end
end

puts anagrams("listen", %w[enlists google inlets banana])
# => ["inlets"]


#The Fourth Way
def anagrams(word, array)
  word = word.downcase
  sorted_word = word.chars.sort.join
  result = []
  array.each do |possible_anagram|
    possible_anagram = possible_anagram.downcase
    if possible_anagram.length == word.length &&
       possible_anagram != word &&
       possible_anagram.chars.sort.join == sorted_word
      result << possible_anagram
    end
  end
  result
end

puts anagrams("listen", %w[enlists google inlets banana])
# => ["inlets"]
