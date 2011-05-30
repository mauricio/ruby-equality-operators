# encoding: UTF-8

class Point

  include Comparable

  attr_accessor :x, :y

  def initialize(x, y)
    self.x = x
    self.y = y
  end

  def hash
    "#{x}-#{y}".hash
  end

  def <=> (other)

    result = nil

    if other.respond_to?(:x) && other.respond_to?(:y)

      result = if self.x == other.x && self.y == other.y
                 0
               elsif self.x >= other.x && self.y >= other.y
                 1
               else
                 -1
               end

    end

    result

  end

end