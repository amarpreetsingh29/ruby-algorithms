def equilibrium_point(a)
  index = -1
  before_sum = 0
  n = a.length

  (0..n-1).each do |i|
    before_sum += a[i-1] if i>0

    after_sum = 0
    (i+1..n-1).each do |j|
      after_sum += a[j]

      if j == n-1 && before_sum == after_sum
        index = i
        return index
      end

      if after_sum > before_sum
        break
      end
    end
  end

  index
end


# result = equilibrium_point([1,3,5,2,2])
# puts "Equilibrium index is #{result}"


# result = equilibrium_point([1])
# puts "Equilibrium index is #{result}"


def equilibrium_point2(a)
  sum  = a.sum
  left_sum = 0

  a.each_with_index do |elm, idx|
    right_sum = sum - left_sum - elm

    return idx if left_sum == right_sum

    left_sum += elm
  end

  -1
end


result = equilibrium_point2([1,3,5,2,2])
puts "Equilibrium index is #{result}"
