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

  def is_even(number)
    if number % 2 === 0
      true
    else
      false
    end
  end

  def is_equal(num, num_2)
    num === num_2
  end

  def change_array_length(group, num)
    array << num
    array
  end

  def pet_animal
    true
  end
end
