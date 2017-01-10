# x = {"first_name"=>"Coding","last_name"=>"Dojo"}
# # puts x["first_name"] , x["last_name"]
# puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

y = {:first_name=>"Coding",:last_name=>"Dojo"}

# puts "y is ", y
# puts y["first_name"] , y["last_name"]

# y.delete(:first_name)
# puts y

if y.has_key? (:last_name)
	puts "Yes"
else
	puts "No"
end


if y.has_value? ("Dojo")
	puts "Yes"
else
	puts "No"
end

if y.empty?
	puts "OK"
else 
	puts "Not empty"
end