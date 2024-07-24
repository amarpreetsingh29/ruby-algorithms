# Given two strings A and B consisting of lowercase english characters.
# Find the characters that are not common in the two strings.
def uncommon_chars(a,b)
  t1 = a.each_char.reject do |char|
    b.include?(char)
  end

  t2 = b.each_char.reject do |char|
    a.include?(char)
  end

  print t1+t2
end

def uncommon_chars_v2(a,b)
  a_set = a.chars.to_set
  b_set = b.chars.to_set

  t1 = a.each_char.reject do |char|
    b_set.include?(char)
  end

  t2 = b.each_char.reject do |char|
    a_set.include?(char)
  end

  print t1+t2
end

uncommon_chars_v2('amarpreet', 'saingh')
