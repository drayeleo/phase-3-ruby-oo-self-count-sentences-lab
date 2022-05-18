require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    result1 = self.split(".")
    result2 = result1.map {
      |substring| 
      # binding.pry
      substring.split("!") 
    }.flatten
    result3 = result2.map {
      |substring| 
      # binding.pry
      substring.split("?") 
    }.flatten

    result3.length

    # binding.pry
  end
end

str = "Hey. How's it going? Omg!!"

str.count_sentences