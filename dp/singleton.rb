# novice singleton
class MySingleton
  private_class_method :new
  @instance = nil
  def self.instance
    @instance ||= self.new
  end
end

#thread safe singleton
class MyThreadSafeSingleton
  private_class_method :new
  @instance = nil
  @instance_mutex = Mutex.new

  def self.instance
    @instance_mutex.synchronize do
      @instance ||= new
    end
    @instance
  end

end

#using ruby singleton module
require 'Singleton'
class My2Singleton
  include Singleton
end


