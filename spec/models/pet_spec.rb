require "rails_helper"

RSpec.describe Pet, type: :model do
  describe "#be_happy method" do
    let(:owner) { double(User, :id => 2, :name => "Foo", :email => "foo@foo", :password => "Foo", pet_animal: true) }
    subject { described_class.new(name: "Petty", user_id: owner.id) }
    it "expects an owner to pet it" do
      expect(owner).to receive(:pet_animal)
      subject.be_happy
    end
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end
end
