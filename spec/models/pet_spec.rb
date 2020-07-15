require "rails_helper"

RSpec.describe Pet, type: :model do
  let(:owner) { double(user: "Mr.Owner", pet_animal: true) }
  subject { described_class.new(user: owner) }
  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end

  describe "#be_happy method" do
    it "expects an owner to pet it" do
      expect(owner).to receive(:pet_animal)
      subject.be_happy
    end
  end
end
