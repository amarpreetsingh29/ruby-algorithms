require_relative "processor.rb"

path_to_csv = "csv/files/small.csv"

options = {
  headers: true,
  encoding: 'UTF-8',
  liberal_parsing: true
}

line_printer = proc do |line|
  line.headers.each do |header|
    puts "#{header}: #{line[header]}"
  end
end

hash_printer = proc do |line|
  puts line.to_h
end

Csv::Processor.line_by_line(path_to_csv, options) do |line|
  hash_printer.call(line)
end

# read entire file at once
Csv::Processor.all(path_to_csv, options) do |lines|
  # lines -> CSV::Table
  lines.each do |line|
    # line -> CSV::Row
    line_printer.call(line)
  end
end

# read file in batches
Csv::Processor.read_in_batches(path_to_csv, options, 100) do |batch|
  batch.each do |line|
    line_printer.call(line)
  end
end
