class StringWithoutHash

  def initialize(text)
    @text = text
  end

  def to_text
    @text
  end

  def ==(other_value)
    if other_value.respond_to?(:to_text)
      self.to_text == other_value.to_text
    end
  end

end

class StringWithHash < StringWithoutHash

  def eql?( other )
    self == other
  end

  def hash
    @text.hash
  end

end