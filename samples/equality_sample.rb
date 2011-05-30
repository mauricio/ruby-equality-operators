
class Meter

  def initialize( value )
    @value = value
  end

  def to_meters
    @value.to_f
  end

  def hash
    self.to_meters.hash
  end

  def ==( other )
    if other.respond_to?( :to_meters )
      (self.to_meters == other.to_meters)
    end
  end

end