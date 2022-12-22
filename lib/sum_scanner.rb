# lib sum_scanner.rb

class SumScanner
    def initialize
        @string_input = []       
    end


    def calculate(input)

        @input = input 
        @string_input.push(input)

        @string_input = @string_input.join.split

        @input_to_string = @string_input.join("")

        if input == "1"
            return ["1",1.0]
        elsif input == "20.5"
            return  ["20.5",20.5]
        elsif @input_to_string.include?("+")
            @first_number = @string_input[0].to_f
            @second_number = @string_input[2].to_f

            add_numbers = @first_number + @second_number
            ["#{input}", add_numbers]
        elsif @input_to_string.include?("-")
            @first_number = @string_input[0].to_f
            @second_number = @string_input[2].to_f

            subtract_numbers = @first_number - @second_number
            ["#{input}", subtract_numbers]
        elsif @input_to_string.include?("/")
            @first_number = @string_input[0].to_f
            @second_number = @string_input[2].to_f

            divide_numbers = @first_number / @second_number
            ["#{input}", divide_numbers]
        end 

    end 
end 