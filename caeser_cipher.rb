def caeser_cipher(string, shift)
   str = string.split('')
   str_new = []
   str.each do |letter|
    if (letter.ord >= 97 && letter.ord <= 122) 
        ciph = letter.ord + shift
        if (ciph < 97 || ciph > 122)
            ciph = ciph - 122 + 96
        end
    elsif (letter.ord >= 65 && letter.ord <= 90)
        ciph = letter.ord + shift
        if (ciph < 65 || ciph > 90)
            ciph = ciph - 90 + 64
        end
    else ciph = letter.ord
    end 
    str_new.push(ciph.chr)

   end
   p str_new.join
end

caeser_cipher('What a string!', 5)
