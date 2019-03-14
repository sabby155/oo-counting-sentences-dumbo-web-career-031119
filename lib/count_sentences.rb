require 'pry'

class String

  def sentence?
     self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    arr_of_str = self.split
    arr_of_str.count do |word|
       word.include(".", "!")
    end   
  end
end