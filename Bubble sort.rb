def bubble_sort(array)
    i = 0
    while i < array.length 
      idx = 0
      while idx < array.length - 1 do
        if array[idx] > array[idx+1]
          array[idx], array[idx+1] = array[idx+1], array[idx]
        end
        idx += 1
      end
      i += 1
    end
  
    return array
  end
  
  bubble_sort([4,3,78,2,0,2])