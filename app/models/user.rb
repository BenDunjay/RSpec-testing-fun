class User < ApplicationRecord
  validates_presence_of :password, :email
  has_many :pets

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
