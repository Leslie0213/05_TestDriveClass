class GrammarStats
    def initialize
      # ...
      @TotalChecks = 0
      @PassesChecks = 0
    end
  
    def check(text) # text is a string
        @TotalChecks =@TotalChecks +1
        fail "No text found" if text.empty?
    if text == text.capitalize && text.end_with?(".", "!", "?")
        @PassesChecks = @PassesChecks + 1
            return true
    else
        return false
        end 


      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    end
  
    def percentage_good

        return (@PassesChecks * 100)/@TotalChecks
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end