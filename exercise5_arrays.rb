a=["Jess","Taylor","Funky","shoes"]
b=[1,2,3,4,5,6]
c=["Jess",6]

# puts a[0]
# puts b[1]

# puts (a+b).to_s

# puts (a+b)-c

# puts b.class

# puts a.shuffle.join("->")

# a.delete("Jess")
# puts "Length of a is #{a.length}"

# d=%w{Mart K}
# puts d

# puts a.at(3)
# a.fetch(100){|i| puts "#{i} is out of bounds" }
# puts a.reverse

# puts a.sort

# puts a.slice(1)

# puts a.insert(2,"IamInserted")

puts a.values_at(1,2).join(' and ')