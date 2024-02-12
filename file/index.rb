def create_empty_file(file_name)
  File.new(file_name, 'w').close
end

def file_handler(file_name, mode)
  File.open(file_name, mode) do |file_handler|
    if block_given?
      yield file_handler
    else
      file_handler
    end
  end
end

def write_to_file(file_name='temp_file', content='', mode='w', &block)
  file_handler(file_name, mode) do |file_handler|
    if block_given?
      yield file_handler
    else
      file_handler.write(content) if content
    end
  end
end

def append_to_file(file_name='temp_file', content='', &block)
  write_to_file(file_name, content, 'a') do |file_handler|
    yield file_handler
  end
end


append_to_file do |file_handler|
  2.times do
    file_handler.write("write-#{Random.rand(10)}\n")
  end
end


def read_all(file_name)
  f = File.open(file_name, 'r')
  contents = f.read
  f.close
  contents
end


def read_by_line(file_name, &block)
  File.open(file_name, 'r').each do |line|
    if block_given?
      yield line
    end
  end
end

# read_by_line('file_name') do |line|
#   puts line
# end

