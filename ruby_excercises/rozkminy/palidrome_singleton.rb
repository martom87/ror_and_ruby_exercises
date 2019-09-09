class PalidromeServiceSingleton
  class << self


    def call(word)
      p " fun is_palindrome1? says its #{is_palindrome1?(word)} that the word: #{word} is a palindrome"
      p " fun is_palindrome2? says its #{is_palindrome2?(word)} that the word: #{word} is a palindrome"
      p " fun is_palindrome3? says its #{is_palindrome3?(word)} that the word: #{word} is a palindrome"
    end


    def is_palindrome1?(word)
      arr = word.chars
      temp = []
      for x in (-arr.size + 1..0)
        temp << arr[-x]
      end
      revert_word = temp.join
      return true if revert_word == word
      false
    end

    def is_palindrome2?(word)
      arr = word.chars
      temp = []
      arr.reverse_each {|x| temp << x}
      revert_word = temp.join
      return true if revert_word == word
      false
    end

    def is_palindrome3?(word)
      arr = word.chars
      temp = []
      arr.reverse_each do |x|
        temp << x
      end
      revert_word = temp.join
      return true if revert_word == word
      false
    end
  end
end

##Demo##

PalidromeServiceSingleton.call('cos')



