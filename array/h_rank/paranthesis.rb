# use of array? -Observe the Pattern:

# For each opening parenthesis, there must be a closing parenthesis.
# The most recently opened parenthesis must be closed first (LIFO order – Last In, First Out).
def ispar(x)
  temp = []

  x.each_char do |item|
    if ['(', '{', '['].include?(item)
      temp.push(item)
    end

    if [')', '}', ']'].include?(item)
      return false if temp.empty?

      last = temp.last

      if (last == '{' && item == '}') ||
        (last == '[' && item == ']') ||
        (last == '(' && item == ')')
        temp.pop
      else
        return false
      end
    end
  end

  temp.empty?
end

t = '{(([)])}'
puts ispar(t)
