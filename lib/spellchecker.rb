class SpellChecker
    def initialize
        @dictionary = ["hello", "there", "what", "time", "is", "it", "cannot", "accommodate", "this", "today", "we"]
    end 

    def check(text)
        input_text_arr = text.scan(/\w+/)

        correct_spelling = input_text_arr.map { |word|
            @dictionary.include?(word.downcase) ? word : "~#{word}~"       
        }.join(" ")

        !@dictionary.include?(text) ? correct_spelling : text
    end 
end 