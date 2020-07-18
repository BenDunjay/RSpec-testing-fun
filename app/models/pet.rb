class Pet < ApplicationRecord
  belongs_to :user

  def be_happy(owner)
    if owner.pet_animal === true
      "Purr"
    end
  end
end
