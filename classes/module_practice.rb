require_relative 'helper_module'

module ModulePractice

  extend HelperModule
  def abcd

  end
  class Temp
    #  include HelperModule
    extend HelperModule

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
end

#ModulePractice::Temp.new.public_1
# ModulePractice.print_message("oye oye")
ModulePractice::Temp.print_message("oye oye")
