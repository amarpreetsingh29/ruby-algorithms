def is_binary(s)
  s.to_s.each_char do |char|
    # O(1) complexity since array is small and constant size
    return 0 unless ["0","1"].include?(char)
  end
  return 1
end

print is_binary(101)
