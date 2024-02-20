require_relative 'index.rb'

file_path = 'file/files/csv.csv'

read_by_line(file_path) do |line|
  puts line
end

append_to_file(file_path) do |file_handler|
  2.times do
    file_handler.write("write-#{Random.rand(10)}\n")
  end
end
