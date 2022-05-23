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
    number_sentences = self.split(/[(.*)(!*)(?*)]/)
    new_array = number_sentences.filter {|str| !str.empty?}
    new_array.count
  end
end
