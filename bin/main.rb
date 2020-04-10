puts "in"


class A
  attr_accessor :etc1

  def initialize
    @etc1 = "idk_A"
  end
end

class B < A
  @etc2

  def show_all
    puts @etc1
  end
end


ins2 = B.new()

ins2.show_all


puts "end"