def pattern_1(n)
  i = 1

  while i <= n
    j = 1
    while j <= i
      print i
      j += 1
    end
    print "\n"
    i+=1
  end
end

pattern_1(4)
