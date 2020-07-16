class Pet < ApplicationRecord
  belongs_to :user

  def be_happy(owner)
    if owner.pet_animal
      "Purr"
    end
  end
end
