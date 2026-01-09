require './adapter'

ENV["PRIMARY_DB"] = "MYSQL"

class PersistenceFacade
  class << self
    def insert(objects_arr)
      if ENV["PRIMARY_DB"] == "MYSQL"
        data = DbAdapter.to_mysql_format(objects_arr)
        #writer.write(data)
      else
        DbAdapter.to_scyalldb_format(objects_arr)
      end
    end
  end
end

User = Struct.new("User", :name, :email, keyword_init: true)
user1 = User.new(name: "cool", email: "cooldeveloper@gmail.com")
PersistenceFacade.insert([user1])
