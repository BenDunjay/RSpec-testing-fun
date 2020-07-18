require "rails_helper"

RSpec.describe Pet, type: :model do
  describe "#be_happy method" do
    let(:owner) { instance_double(User, id: 1, pet_animal: true) }
    subject { described_class.new(name: "Petty", user_id: owner.id) }
    it "expects an owner to pet it" do
      expect(owner).to receive(:pet_animal).and_return(true)
      expect(subject.be_happy(owner)).to eq("Purr")
    end

    describe "using spy" do
      let(:owner) { spy("owner") } #dynamically accepts any and all methods passed to let variable.
      it "the method used doesn't need to be passed to owner variable" do
        owner.hello_there #Made random method not being passed in to owner variable!
        expect(owner).to have_received(:hello_there)
      end
    end
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end
end
