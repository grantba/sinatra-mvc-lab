class PigLatinizer

    def piglatinize(input)
        @input = input.split(" ").map do |word|
            piglatinize_word(word)
        end
        # phrase_in_pig_latin
        @input.join(" ")
    end

    def piglatinize_word(word)
        if word.start_with?(/[AaEeIiOoUu]/)
            new_word = word + "way"
            # @result += new_word
        elsif word.start_with?(/[BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz][aeiou]/)
            first_half = word[1..-1]
            second_half = word[0] + "ay"
            new_word = first_half + second_half 
            # @result += new_word
        elsif word.start_with?(/[BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz][bcdfghjklmnpqrstvwxyz][aeiou]/)
            first_half = word[2..-1]
            second_half = word[0..1] + "ay"
            new_word = first_half + second_half 
            # @result += new_word
        else 
            first_half = word[3..-1]
            second_half = word[0..2] + "ay"
            new_word = first_half + second_half 
            # @result += new_word
        end
    end

    # def phrase_in_pig_latin
    #     @result
    # end

end