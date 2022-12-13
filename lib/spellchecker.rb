class SpellChecker
    def initialize
        @dictionary = ["Hello"]
    end 

    def check(text)
        if text.empty? || @dictionary.include?(text) 
             return text 
        else 
            return "~#{text}~"
        end 
    end 
end 