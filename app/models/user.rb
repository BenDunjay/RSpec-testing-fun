class User < ApplicationRecord
  def say_name
    self.name
  end

  def do_maths(a, b)
    a + b
  end

  def do_subtraction(a, b)
    a - b
  end
end
