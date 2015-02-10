def merge_sort(array)
  arr2 = []
  split(array, 0, array.length - 1, arr2)
  return arr2
end

def split(arr1, i, j, arr2)
  return if j - i < 1
  k = (i + j) / 2
  split(arr1, i, k, arr2)
  split(arr1, k + 1, j, arr2)
  merge(arr1, i, j, k, arr2)
  copy(arr2, i, j, arr1)
end

def merge(arr1, i, j, k, arr2)
  a, b = i, k + 1
  (i..j).each do |c|
    if a < k + 1 && (b > j || arr1[a] < arr1[b])
      arr2[c] = arr1[a]
      a += 1
    else
      arr2[c] = arr1[b]
      b += 1
    end
  end
end

def copy(arr1,i,j,arr2)
  (i..j).each do |k|
    arr2[k] = arr1[k]
  end
end