class Pet < ApplicationRecord
  belongs_to :user

  def be_happy
    if user.pet_animal
      "Purr"
    end
  end
end
