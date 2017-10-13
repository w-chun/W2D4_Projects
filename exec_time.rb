def my_min_one(arr)
  min = arr[0]

  (0...arr.length - 1).each do |idx1|
    (idx1...arr.length).each do |idx2|
      if arr[idx1] < arr[idx2] && arr[idx1] < min
        min = arr[idx1]
      end
    end
  end
  min
end

def my_min_two(arr)
  min = arr[0]

  arr.each do |el|
    min = el if el < min
  end
  min
end

def sub_sum_one(arr)
  sub_sets = []
  i = 0
  while i < arr.length
    j = i
    while j < arr.length
      sub_sets << arr[i..j]
      j += 1
    end
    i +=1
  end
  sub_sets


  (sub_sets.map {|subset| subset.inject(:+)}).max
end

def sub_sum_two(arr)
  # max = arr[0]
  #
  # (1..arr.length).each do |i|
  #   left_sum = arr.take(i).inject(:+)
  #   right_sum = arr.drop(i).inject(:+)
  #     case left_sum <=> right_sum
  #     when -1
  #       max = right_sum if right_sum > max
  #     when 0
  #       max = left_sum
  #     when 1
  #       max = left_sum if left_sum > max
  #     end
  #   end
  # max

  max = 0
  cont = 0
  arr.each do |el|
    cont += el
    max += el
    if cont <= 0
      cont = 0
      max = 0
    end
  end
  max
end
