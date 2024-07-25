def merge_sort(array)
  if array.length == 1
    array
  else
    quotient = array.length.divmod(2)[0]

    left_half = merge_sort(array[0, quotient])
    right_half = merge_sort(array[quotient..])

    merged_array = []

    until merged_array.length == array.length
      merged_array << if left_half.empty?
                        right_half.shift
                      elsif right_half.empty?
                        left_half.shift
                      elsif left_half[0] > right_half[0]
                        right_half.shift
                      else
                        left_half.shift
                      end
    end

    merged_array
  end
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 66, 110])
