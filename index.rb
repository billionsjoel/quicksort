def quick_sort(array, from_index = 0, to_index = array.length - 1)
  if from_index < to_index
    pivot_index = partition_and_get_pivot_index(array, from_index, to_index)
    quick_sort(array, from_index, pivot_index - 1)
    quick_sort(array, pivot_index + 1, to_index)
  end
  return array
end

def partition_and_get_pivot_index(array, from_index, to_index)
  pivot_value = array[to_index]
  pointer_a_index = from_index
  pointer_b_index = from_index

  while pointer_a_index < to_index
    if array[pointer_a_index] <= pivot_value
      swap_values(array, pointer_a_index, pointer_b_index)
      pointer_b_index += 1
    end
    pointer_a_index += 1
  end
  swap_values(array, pointer_b_index, to_index)
  return pointer_b_index
end

def swap_values(array, index_a, index_b)
  array[index_a], array[index_b] = array[index_b], array[index_a]
end