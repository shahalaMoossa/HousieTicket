def gen_tckt
	arr1 = []
	arr2 = []
	arr3 = []
	min_limit = 0
	max_limit = 9 
	9.times{
		min_limit = 1 if min_limit == 0
		max_limit = 90 if max_limit == 89
		temp = (min_limit..max_limit).to_a.sample(3).sort
		arr1.push(temp[0])
		arr2.push(temp[1])
		arr3.push(temp[2])
		min_limit += 10
		max_limit += 10
	}
	put_blank_and_print(arr1)
	put_blank_and_print(arr2)
	put_blank_and_print(arr3)
end

def put_blank_and_print(arr)
	temp = arr.sample(4)
	temp.each do |val|
		arr[arr.index(val)] = "X"
	end
	arr.each {|a| print "#{a}\t"}
	print "\n"
end

gen_tckt