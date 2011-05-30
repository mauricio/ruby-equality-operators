# encoding: UTF-8

require( File.expand_path( File.join( File.dirname( __FILE__ ), 'point' ) ) )

class Rectangle

  attr_accessor :start, :end

  def initialize( x1, y1, x2, y2 )
    self.start = Point.new( x1, y1 )
    self.end = Point.new( x2, y2 )

    if self.start >= self.end
      raise "Start #{self.start.inspect} should be less than end #{self.end.inspect}"
    end
  end

  def === (other)
    if other.respond_to?(:x) && other.respond_to?( :y )
       other.between?( self.start, self.end )
    else
      self == other
    end
  end

  def == (other)
    if other.respond_to?( :start ) && other.respond_to?( :end )
      self.start == other.start && self.end == other.end
    end
  end

end