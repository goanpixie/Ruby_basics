age = 22
if age > 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if !(age < 21)
  puts "Welcome to the party"
else
  puts "Not yet"
end

unless age < 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end

puts "hello" if 0
puts "hello" if nil
puts "hello" if ""

puts "goodbye" if false
puts "goodbye" if nil
puts "goodbye" if []

 # puts "ruby" unless 0
 # puts "ruby" unless ""
 puts "ruby" unless nil

 puts "matz" unless []

