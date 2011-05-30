age = 19

case age
  when 1..18
    puts 'just out of college'
  when 19..30
    puts 'wild years'
  when 31..40
    puts 'i better find a job in a big corp'
  else
    puts 'retirement plan'
end

if 1..18 === age
  puts 'just out of college'
elsif 19..30 === age
  puts 'wild years'
elsif 31..40 === age
  puts 'i better find a job in a big corp'
else
  puts 'retirement plan'
end

point = Point.new( 2, 4 )

case point
  when Rectangle.new( 0, 3, 5, 8  )
    puts 'found it here'
  when Rectangle.new( 3, 3, 10, 15  )
    puts 'i will not match'
end
