class SpellChecker
    def initialize
        @dictionary = ["Hello", "there"]
    end 

    def check(text)

        input_text_arr = text.scan(/\w+/)

        correct_spelling = input_text_arr.map {|word|
        @dictionary.include?(word.downcase) ? word : "~#{word}~"       
           }.join(" ")

         if !@dictionary.include?(text)
            correct_spelling
         else 
            text 
         end 
    end 
end 