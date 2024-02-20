require 'CSV';

module Csv
  module Processor
    def self.line_by_line(path_to_csv, options, &block)
      CSV.foreach(path_to_csv, **options) do |row|
        yield row if block_given?
      end
    end

    def self.all(path_to_csv, options, &block)
      # rows -> CSV::Table(Array of CSV::Row)
      rows = CSV.read(path_to_csv, **options)
      if block_given?
        yield rows
      else
        rows
      end
    end

    def get_first_line(path_to_csv, options, &block)
      CSV.read(path_to_csv, **options).first
    end

    def self.read_in_batches(path_to_csv, options, batch_size, &block)
      file_io = File.open(path_to_csv, encoding: options[:encoding])
      csv = CSV.new(file_io, **options).each_slice(batch_size) do |batch|
        yield batch
      end
    end
  end
end
