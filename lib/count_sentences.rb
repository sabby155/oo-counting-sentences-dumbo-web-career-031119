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
      count = 0
      array = self.split("")
      array.each_with_index do |char, i|
        unless char[i] == char[i+1]
          count += 1 if char == "." | char == "?"| char == "!"
        end  
      end  
  end
end