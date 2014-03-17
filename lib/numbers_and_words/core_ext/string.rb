class Integer
  def to_words options = {}
    NumbersAndWords::Wrappers::String.new(self).to_words options
  end
end