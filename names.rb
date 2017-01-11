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


x = ("a".."z")
shuffle = (x.to_a.shuffle)
puts shuffle.to_s
puts shuffle.first
puts shuffle.last
vowels=["i","e","o","u","a"]
	for i in vowels
		if i == shuffle.first
			puts "I am a vowel"
		end
	end

x = (55..100)
	



