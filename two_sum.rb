# o(n^2) for time complexity
def bad_two_sum?(arr, target_sum)
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      return true if arr[i] + arr[j] == target_sum
      j += 1
    end
    i += 1
  end
  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6)

def okay_two_sum?(arr, target_sum)
  sum_arr = arr.permutation(2).to_a
  values = sum_arr.map {|arr| arr.inject(:+)}.uniq.sort
  index = b_search(values, target_sum)
  values[index] == target_sum
end

def b_search(arr, target)
  return nil if arr.empty?
  mid = arr.length / 2
  case arr[mid] <=> target
  when 0
    mid
  when 1
    b_search(arr.take(mid),target)
  else
    result = b_search(arr.drop(mid+1), target)
    result.nil? ? nil : mid + 1 + result
  end
end

# p okay_two_sum?(arr, 6)

def hash_map(arr, target_sum)
  hash = Hash.new{}

  arr.each_with_index do |n,i|
    if !hash[target_sum - n].nil?
      return true
    else
      hash[n] = i
    end

  end
  false
  # array.length.times do

end

p hash_map(arr, 9)
