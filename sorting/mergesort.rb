def mergesort(a)
	if a.length <= 1
		return a
	end
	left, right = split_array(a)
	left = mergesort(left)
	right = mergesort(right)
	return combine(left, right)
end

def split_array(a)
	# find the middle
	left,right = a.each_slice( (a.size/2.0).round ).to_a
	# mid = (a.length / 2).round
	# left = a[0..mid]
	# right = a[(mid+1)..-1]
	# return left and right halves of array as separate arrays
	return left, right
end

# precondition: a and b are sorted
def combine(left, right)
	results = []
	# or, results = Array.new
	# counters pointing to the index of the smallest elements in each array
	left_index = left[0]
	right_index = right[0]
	# check that we have elements to compare
	if left.length && right.length > 0
		if left_index >= right_index
			# push the smaller element onto the result array
			results.push(right_index)
			left.shift
			left_index = left[0]
		else
			results.push(left_index)
			right.shift
			right_index = right[0]
		end
		if left.length = 1
			results.push(left_index)
		elsif right.length = 1
			results.push(second_index)
		end
	end
	# only one of these should occur
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result

end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
