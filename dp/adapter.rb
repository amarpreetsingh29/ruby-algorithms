#single adapter
class DbAdapter
  class << self
    def to_scyalldb_format(objects_arr)
      objects_arr.map(&:to_h)
    end

    def to_mysql_format(objects_arr)
      objects_arr.map(&:to_h)
    end
  end
end

#individual adapters

class MySqlAdapter
  class << self
    def convert(objects_arr)
      objects_arr.map(&:to_h)
    end
  end
end

class ScyllaDbAdapter
  class << self
    def convert(objects_arr)
      objects_arr.map(&:to_h)
    end
  end
end
