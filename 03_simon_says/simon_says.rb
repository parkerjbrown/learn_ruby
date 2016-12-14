def echo message
  message
end

def shout message
  message.upcase
end

def repeat message, times=2
  result = message
  (times - 1).times do
    result += " " + message
  end
  result
end

def start_of_word word, num
  word[0, num]
end

def first_word sentence
  sentence.partition(" ").first
end

def titleize sentence
  words = sentence.split(" ")
  words.each do |word|
    if (word != "and" && word != "the" && word != "over")
      word.capitalize!
    end
  end
  words[0].capitalize!
  words.join(" ")
end
