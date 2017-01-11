# x =[3,5,1,2,7,9,8,13,25,32]
# count=0
# # x.each{|i| "#{count+=i}"}
# # puts count
# puts x.reject{|i| i<10}.to_s




# x =["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# # puts x.shuffle
# newArr=[]
# for i in x
# 	if i.length>5
# 		newArr.push(i)
# 	end
# end
# puts newArr.to_s


# x = ("a".."z")
# shuffle = (x.to_a.shuffle)
# puts shuffle.to_s
# puts shuffle.first
# puts shuffle.last
# vowels=["i","e","o","u","a"]
# 	for i in vowels
# 		if i == shuffle.first
# 			puts "I am a vowel"
# 		end
# 	end


# x = []
# 10.times{|i| x.push(i=rand(55..100))}
# puts x.sort
# puts x.min
# puts x.max

# a = []
# (1..5).each {|i| a.push((65+rand(26)).chr) }
# puts a.join

# x = []
# 10.times{|i| x.push((1..5).collect {|i| i = (65+rand(26)).chr}.join)}
# puts x


a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]
length =names.length
    puts "There are " + names.count.to_s + " names in the 'names' array"

names.each{|names| puts "the name is " +names.values.join(" ")}
	





