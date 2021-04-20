# sorting array of integers

def bubble_sort(arr)
  changes = true

  while changes
    changes = false
    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        changes = true
      end
    end
  end
  arr
end

# sorting array of strings

def bubble_sort_by(arr)
  changes = true
  while changes
    changes = false
    (arr.size - 1).times do |i|
      compare = yield arr[i], arr[i + 1]
      if compare.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        changes = true
      end
    end
  end
  arr
end

# calling methods

bubble_sort([1, 8, 2, 3, 10, 5, 8])
bubble_sort_by(%w[hey hello hi hey]) do |str1, str2|
  str1.length - str2.length
end
