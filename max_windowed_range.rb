def windowed_max_range(array, w)
  current_max_range = array[0]

  index = array.length - w + 1
  (0..index).each do |i|
    window = array[i...(i+w)].sort
    range = window[-1] - window[0]
    current_max_range = range if range > current_max_range
  end
  current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 5)
