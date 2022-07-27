def gen_tckt
	arr1 = []
	arr2 = []
	arr3 = []
	min_limit = 0
	max_limit = 9 
	9.times{
		min_limit = 1 if min_limit == 0	
		max_limit = 90 if max_limit == 89
		
		#Generate three random nubmers between the limits and sort it and push each one of them to three different arrays,
		#thus, at last we get three arrays with 9 elements each.
		temp = (min_limit..max_limit).to_a.sample(3).sort
		arr1.push(temp[0])
		arr2.push(temp[1])
		arr3.push(temp[2])
		
		#increment the limits by 10
		min_limit += 10
		max_limit += 10
	}
	put_blank_and_print(arr1)
	put_blank_and_print(arr2)
	put_blank_and_print(arr3)
end

def put_blank_and_print(arr)
	#fetch 4 random numbers from the given array and replace those with "X"
	temp = arr.sample(4)
	temp.each do |val|
		arr[arr.index(val)] = "X"
	end
	#print each of the elements of the array to the console
	arr.each {|a| print "#{a}\t"}
	print "\n"
end

gen_tckt
