# encoding: UTF-8

require(File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper')))

describe 'when comparing objects' do

  context 'comparing meters with inches' do

    it 'should be true when they both represent the same distance' do
      @meter = Meter.new(4)
      @inch  = Inch.new(157.48)

      @meter.should == @inch
    end

  end

  context 'comparing meters to feet' do

    it 'should be true when they both represent the same distance' do
      @meter = Meter.new(8)
      @foot  = Foot.new(26.2464)

      @meter.should == @foot
    end

  end

  context 'comparing feet to inches' do

    it 'should be true when they both represent the same distance' do
      @foot = Foot.new(26.2464)
      @inch = Inch.new(314.96)

      @foot.should == @inch
    end

  end

  context 'when sorting objects' do

    before do
      @meter    = Meter.new(1.5)
      @inch     = Inch.new(157.48)
      @foot     = Foot.new(26.2464)
      @measures = [@inch, @meter, @foot].sort
    end

    it 'should order them by size correctly' do
      @measures.first == @meter
      @measures[1] == @inch
      @measures.last == @foot
    end

  end

  context 'without hash and eql? methods' do

    it 'should be equal' do
      @first  = StringWithoutHash.new('first')
      @second = StringWithoutHash.new('first')
      @first.should == @second
    end

    it 'should add as two different keys in the hash' do

      @texts = {}

      10.times do
        @texts[ StringWithoutHash.new('first') ] = 'one'
      end

      @texts.keys.size.should == 10

    end

  end

  context 'with hash and eql? methods' do

    it 'should be equal' do
      @first  = StringWithHash.new('first')
      @second = StringWithHash.new('first')
      @first.should == @second
    end

    it 'should add as a single key in the hash' do

      @texts = {}

      50.times do
        @texts[ StringWithHash.new('first') ] = 'one'
      end

      @texts.keys.size.should == 1

    end

  end

  context 'for points' do

    it 'should be equal' do
      @point_1 = Point.new(1, 1)
      @point_2 = Point.new(1, 1)

      @point_1.should == @point_2

    end

    it 'should not be equal' do
      @point_1 = Point.new(1, 1)
      @point_2 = Point.new(1, 2)

      @point_1.should_not == @point_2
    end

    it 'should have point 1 be less than point 2' do

      @point_1 = Point.new(1, 1)
      @point_2 = Point.new(3, 3)

      @point_1.should <= @point_2

    end

  end

  context 'for rectangles' do

    before do
      @rectangle = Rectangle.new( 0, 3, 5, 8  )
    end

    it 'should have the point inside the rectangle' do

      (@rectangle === Point.new( 2, 4 )).should be_true

    end

    it 'should not have the point inside the rectangle' do

      @rectangle.should_not === Point.new( 6, 9 )

    end

  end

end