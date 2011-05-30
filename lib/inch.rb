# encoding: UTF-8
require( File.expand_path( File.join( File.dirname( __FILE__ ), 'meter_comparator' ) ) )

class Inch

  include MeterComparator

  def initialize( value )
    @value = value
  end

  def to_meters
    @value.to_f / 39.370
  end

end