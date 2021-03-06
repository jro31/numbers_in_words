# frozen_string_literal: true

module NumbersInWords
  def in_words(fraction: false)
    NumbersInWords.in_words(self, fraction: fraction)
  end
end

module WordsInNumbers
  def in_numbers(only_compress: false)
    NumbersInWords::ToNumber.new(self).in_numbers(only_compress: only_compress)
  end
end

class String
  include WordsInNumbers
end

class Numeric
  include NumbersInWords
end
