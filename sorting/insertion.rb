# Insertion sort algorithm
# Efficient for small number of elements

# Input
# [1, 5, 3, 4, 6, 3]

# Expected output
# [1, 3, 3, 4, 5, 6]

def insertion_sort(array)
  final = [array[0]]
  array.delete_at(0)
  # main code
  for i in array
    final_index = 0
      while final_index < final.length
          if i <= final[final_index]
              final.insert(final_index,i)
              break
          elsif final_index == final.length-1
              final.insert(final_index+1,i)
              break
          end
          final_index+=1
      end
  end
  # output
  final
end

array = [1, 5, 3, 4, 6, 3]
puts insertion_sort(array)
