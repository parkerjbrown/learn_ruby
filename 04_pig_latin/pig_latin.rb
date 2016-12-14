def translate sentence
  vowels = ["a", "e", "i", "o", "u", "y"]

  words = sentence.split(" ")
    .map do |word|
      i = 0
      until vowels.include? word[i]
        i = i + 1
      end 
     
      if (word[i - 1].to_s + word[i].to_s) == "qu"
        to_append = word[0...(i + 1)]
        word[0...(i + 1)] = ''
      else
        to_append = word[0...i]
        word[0...i] = ''
      end

      word = word + to_append + "ay"
    end
    .join(" ")
end

puts translate("square")
