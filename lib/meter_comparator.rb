# encoding: UTF-8

module MeterComparator

  include Comparable

  def <=> (other)
    result = nil

    if other.respond_to?(:to_meters)
      receiver_value = self.to_meters
      argument_value = other.to_meters

      result = if receiver_value == argument_value
                 0
               elsif receiver_value < argument_value
                 -1
               else
                 1
               end
    end

    result
  end

  def inspect
    "#<#{self.class}:#{self.hash} size_in_meters=#{self.to_meters}>"
  end

  def hash
    self.to_meters.hash
  end

end