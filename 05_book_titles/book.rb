class Book
  attr_accessor :title

  def title
    words = @title.split
    words.map do |word|
      lowercase = ["the", "and", "a", "an", "in", "of"]
      unless (lowercase.include? word)
        word.capitalize!
      end
    end

    words[0].capitalize!
    words.join(" ")
  end
end
