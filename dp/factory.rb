class DeviceFactory
  def self.order(make)
    case make.downcase
    when "apple"
      Apple.new
    when "blackberry"
      Blackberry.new
    end
  end
end

class Device
  attr_accessor :make
  def initialize
    self.make = self.class.name
  end

  def welcome
    puts "Hello to your new #{self.class.name} Device"
  end
end

class Apple < Device
end

class Blackberry < Device
end

device = DeviceFactory.order("apple")
device.welcome
