# 1.# i=1
# number=255
# while i<=number
# 	puts "i= #{i}"
# 	i+=1
# end

# 2.
a= 1..255
# a.each {|i| print "#{i} " if i%2==1} 

# 3.
# count=0
# a.each{ |i| print "The number is : #{i} the Sum is:#{count+=i}"}

# 4.
# x=[1,3,5,7,9,13]
# y= x.length
# puts x.take(y) 

# 5.
 # x= [-3, -5, -7,7,0]
 # puts x.max

#6
# x = [2, 10, 3]
# count=0
# y = x.length
# x.each{ |i| "#{count+=i}"}
# Average= count/y
# puts "Average is: " ,(Average)

# 7.
# a.each{|i| print " #{i}" if i%2==1}.to_s

#8.
# array = [1, 3, 5, 7]
# y = 3
# count=0
# array.each{|i| " #{count+=1}" if i>y}
# puts count

# 9.
# x = [1, 5, 10, -2]
# x.each{|i| puts i*i}


#10.
#  x=[1, 5, 10, -2]
# newArr=[]
# for i in x
# 	if  i> 0
#    		newArr.push(i)
# 	else
#   		newArr.push(0)
# 	end  
# end
# puts newArr.to_s

# 11.
# x =[1, 5, 10, -2]
# newArr =[]
# count=0
# for i in x
# 	count+=i  
# end
# average=count/x.length
# 	newArr.push(x.min)
# 	newArr.push(x.max)
# 	newArr.push(average)
# puts newArr

#12.
# x = [1, 5, 10, 7, -2]
# x.delete_at(0)
# x.push(0)
# puts x.to_s

#13.
 x=[-1, -3, 2]
newArr=[]
for i in x
	if  i> 0
   		newArr.push(i)
	else
  		newArr.push("Dojo")
	end  
end
puts newArr.to_s





