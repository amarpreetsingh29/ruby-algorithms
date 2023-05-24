def sub_string(main_string, search_string)
i = j = 0
begin
  if(main_string[i] == search_string[j])
    if(j==search_string.length - 1)
      return true
    end
    i += 1
    j += 1
  else
    i += 1
    j=0
  end
end while (i < main_string.length)

return false
end

a="amarepreet"

puts sub_string(a, "amarepreet")
