class PigLatinizer

  attr_accessor :text

  @@vowels = ["a", "e", "i", "o", "u"]

  def self.vowels
    @@vowels
  end

  def piglatinize(word)
    if @@vowels.include?(word.downcase[0])
      "#{word}way"
    else
      letters = word.split("")
      end_syllable = letters.take_while {|letter| !@@vowels.include?(letter)}.join("") #going through each letter, and while the letter isn't in a vowel, it will add it to an array
      beginning = word[end_syllable.length..-1]
      "#{beginning}#{end_syllable}ay"
    end
  end

  def to_pig_latin(phrase)
    array = phrase.split(" ")
    piglatinized = array.map do |word|
      self.piglatinize(word)
    end
    piglatinized.join(" ")
  end

end
