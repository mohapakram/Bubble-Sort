
def bubble_sort(arr)
  go_throught_counter = 0
  loop do
    arr.each_with_index do |n, i|
      break if arr[i + 1].nil?
      if arr[i + 1] < n
        arr[i] = arr[i + 1]
        arr[i + 1] = n
      end
    end
    go_throught_counter += 1
    break if arr.length - 1 == go_throught_counter
  end
  p arr
end

bubble_sort([8, 9, 2, 3, 5])

def bubble_sort_by(arr)
  go_throught_counter = 0
  loop do
    arr.each_with_index do |n, i|
      break if arr[i + 1].nil?
      diff = yield(n, arr[i + 1])
      if diff.positive?
        arr[i] = arr[i + 1]
        arr[i + 1] = n
      end
    end
    go_throught_counter += 1
    break if arr.length - 1 == go_throught_counter
  end
  p arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
# => ["hi", "hey", "hello"]
