# encoding: UTF-8

require 'rubygems'

gem 'rspec'

require 'rspec'

lib_path = File.join( File.dirname( __FILE__ ), '..', 'lib', '*.rb' )

Dir[ File.expand_path( lib_path ) ].each do |file|

  require( file )
end

RSpec.configure do |c|
  c.mock_with :rspec
end