MATCH = {
  '{' => '}',
  '(' => ')',
  '[' => ']'
}

def  valid_paranthesis(s = '')
  return if s.empty?
  stack = []

  s.each_char do |char|
    if(!stack.empty? && char == MATCH[stack.last])
      stack.pop
    else
      stack.push(char)
    end
  end
  return stack.empty?
end
p valid_paranthesis('[{()}]')
