#the idea is heaviest element will bubble down

def bubble_sort(a)
  i=0
  n= a.length
  while i<n-1
    j=i+1
    while j<n
      if(a[i]<a[j])
        temp = a[i]
        a[i] = a[j]
        a[j] = temp
      end
       j += 1
    end
    i += 1
  end
  return a
end

a=[9,4,1,3,5]
p bubble_sort(a)
