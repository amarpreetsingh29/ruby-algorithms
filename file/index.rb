def create_empty_file(file_path)
  File.new(file_path, 'w').close
end

def file_handler(file_path, mode)
  File.open(file_path, mode) do |file_handler|
    if block_given?
      yield file_handler
    else
      file_handler
    end
  end
end

def write_to_file(file_path, content='', mode='w', &block)
  file_handler(file_path, mode) do |file_handler|
    if block_given?
      yield file_handler
    else
      file_handler.write(content) if content
    end
  end
end

def append_to_file(file_path, content='', &block)
  write_to_file(file_path, content, 'a') do |file_handler|
    yield file_handler
  end
end

def read_all(file_path)
  f = File.open(file_path, 'r')
  contents = f.read
  f.close
  contents
end

def read_by_line(file_path, &block)
  File.open(file_path, 'r').each do |line|
    if block_given?
      yield line
    end
  end
end


