class Application
  def self.config
    @config_ins
  end

  def self.configure(&block)
    @config_ins ||= Config.new
    # block.call(@config_ins)
    @config_ins.instance_eval(&block)
  end
end

class Config
  def initialize
    @host = nil
    @port = nil
  end

  def host=(val)
    @host = val
  end

  def port=(val)
    @port = val
  end

  def show
    puts "host is #{@host} and port is #{@port}"
  end
end


Application.configure do |config|
  config.host = 'https://www.infosys.com'
  config.port = 8080
end

Application.configure do |config|
  config.show
end



