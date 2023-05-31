class Temp
  @@var = 1
  def initialize
    @ins_1 = "hello"
  end
  protected
  def protected_1
    puts %(#@ins_1 from protected method)
  end
  public
  def public_1
    puts %(#@ins_1 from public method)
    protected_1
  end
  private
  def abcd
    puts %(#@ins_1 from private method)
  end
end

class TempInherited < Temp
  def hello
    protected_1
  end
end


class TempWithoutInitialize

  attr_accessor :abcd
end

b = TempWithoutInitialize.new({
  abcd: 12
})


a = Temp.new


a.public_1

puts Temp.class_variable_get(:var)
# b = TempInherited.new
# b.hello
