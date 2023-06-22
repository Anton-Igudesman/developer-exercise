class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  
    # TODO: Implement this method
    def self.marklar(str)
      words = str.split(" ")
      result = []
    
      words.each do |word|
        if word.length > 4
          if word[0] == word[0].upcase && word[-1].match(/[[:punct:]]/)
            punctuation = word[-1]
            result << "Marklar" + punctuation
          
          elsif word[0] == word[0].upcase
            result << "Marklar"
            
          elsif word[-1].match(/[[:punct:]]/)
            punctuation = word[-1]
            result << "marklar" + punctuation

          else
            result << "marklar"
          end
        else
          result << word
        end
      end
    result.join(" ")
    end

    marklar("The quick brown fox")
  

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
  def self.even_fibonacci(nth)
    fibonacci = [1, 1]
    sum = 0
  
    (2..nth - 1).each do |i|
      fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
      sum += fibonacci[i] if fibonacci[i].even?
    end
  
    sum
  end
puts even_fibonacci(6)
end


