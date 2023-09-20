def caesar_cipher(string, factor)
    alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    base_arr = string.chars
    crypto_arr = []
    puts base_arr.join(' ')

    base_arr.each do |char|
        if alphabet.include?(char.downcase)
            index = alphabet.find_index(char.downcase)
            if index + factor > alphabet.length
                char == char.upcase ?
                crypto_arr.push(alphabet[index + factor - alphabet.length].upcase)
                : crypto_arr.push(alphabet[index + factor - alphabet.length])
            else
                char == char.upcase ?
                crypto_arr.push(alphabet[index + factor].upcase)
                : crypto_arr.push(alphabet[index + factor])
            end    
        else
            crypto_arr.push(char)
        end
    end
    puts crypto_arr.join(' ')
end

caesar_cipher("What a string!", 5)
