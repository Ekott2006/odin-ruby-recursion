def merge_sort(array, left = 0, right = array.length)
  divider = ((left + right) / 2).round
  if right - left <= 2
    array[left...right] = sort_array(array[left...divider], array[divider...right])
    return array[left...right]
  end
  sort_array(merge_sort(array, left, divider), merge_sort(array, divider, right))
end

def sort_array(left_array, right_array)
  sorted_array = []
  i = 0
  j = 0
  (left_array.length + right_array.length).times do
    left = left_array[i]
    right = right_array[j]
    if right.nil? or (!left.nil? and left <= right)
      sorted_array << left
      i += 1
    else
      sorted_array << right
      j += 1
    end
  end
  sorted_array
end

p merge_sort([5])
p merge_sort([5, 2])
p merge_sort([5, 2, 1])
p merge_sort([5, 2, 1, 3])
p merge_sort([5, 2, 1, 3, 6])
p merge_sort([5, 2, 1, 3, 6, 4])
p merge_sort([5, 2, 1, 3, 6, 4, 8])
p merge_sort([5, 2, 1, 3, 6, 4, 8, 0])
p merge_sort([5, 2, 1, 3, 6, 4, 8, 0, 7])
