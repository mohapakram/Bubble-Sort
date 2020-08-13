 
arr1 = [8,9,2,3,5]

def bubble_sort(arr)
  go_throught_counter = 0
    loop do 
            arr.each_with_index do |n,i|
                break if arr[i+1] == nil
                if arr[i+1] < n
                    arr[i] = arr[i+1]
                    arr[i+1] = n
                else 
                    next
                end
            end
        go_throught_counter += 1
        break if arr.length - 1 == go_throught_counter 
    end
   arr
end

p bubble_sort(arr1)



