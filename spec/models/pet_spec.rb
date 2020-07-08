require "rails_helper"

RSpec.describe Pet, type: :model do
  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end
end
