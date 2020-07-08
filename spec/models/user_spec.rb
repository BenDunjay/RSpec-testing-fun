require "rails_helper"

RSpec.describe User, type: :model do
  subject { described_class.new(name: "John", password: "some_password", email: "john@doe.com") }
  it "initializes a name" do
    expect(subject.name).to eq("John")
  end

  context "with no argument" do
    subject { described_class.new }
    it "should default to Bill as the name" do
      expect(subject.name).to eq("Bill")
    end
  end

  context "Validations" do
    it "a method calls the name" do
      expect(subject.say_name).to eq(subject.name)
    end

    context "can do maths" do
      it "will do addition" do
        expect(subject.do_maths(3, 5)).to eq(8)
      end

      it "will do subtraction" do
        expect(subject.do_subtraction(5, 3)).to eq(2)
      end
    end

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
