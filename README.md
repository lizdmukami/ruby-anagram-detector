This is a program that, given a word and a list of possible anagrams, selects the correct one(s) and returns them in an array.

## In the Second way

In this implementation, the program takes a word and a list of possible anagrams as arguments. It first converts both the word and the possible anagrams to lowercase for case-insensitive comparison. It then sorts the characters of the word and joins them to form a new string, which is used as a reference to compare against the sorted characters of each possible anagram. If a possible anagram has the same length as the word and is not equal to the word, and if its sorted characters match the reference, it is added to the result array. The result array is then returned.


## In the Third Way

In this implementation, the program uses the select method to filter the array and select only the possible anagrams that meet the conditions. The conditions are the same as in the previous implementation, and they are all checked in the block passed to select. The result of the select method is an array of the selected elements, which is then returned by the anagrams method.

## The fourth Way
In this implementation, the program uses a loop to iterate over the array of possible anagrams and an if statement to check if each one meets the conditions for being an anagram of the word. If a possible anagram meets the conditions, it is added to the result array. The result array is then returned by the anagrams method.