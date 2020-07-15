require "rails_helper"

RSpec.describe User, type: :model do
  subject { described_class.new(name: "John", password: "some_password", email: "john@doe.com") }
  it "initializes a name" do
    expect(subject.name).to eq("John")
  end

  it "confirms that an object can respond to a method" do
    expect(subject).to respond_to(:say_name, :do_maths)
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

  context "can do maths" do
    it "will do addition" do
      expect(subject.do_maths(3, 5)).to eq(8)
    end

    it "will do subtraction" do
      expect(subject.do_subtraction(5, 3)).to eq(2)
    end

    it "should be able to compare two numbers" do
      expect(subject.is_equal(5, 5)).to eq(true)
    end
  end

  context "#is_even method" do
    describe "with even number" do
      it "should return true" do
        expect(subject.is_even(4)).to eq(true)
      end
    end

    describe "with false number" do
      it "should return false" do
        expect(subject.is_even(5)).to eq(false)
      end
    end
  end

  describe "changes shopping array length" do
    subject { described_class.new.change_array_length(array: [], num: 2) }
    it "responds to a method with arguments" do
      expect(subject).to respond_to(:change_array_length).with(2).arguments
    end

    it "to not be empty" do
      expect(subject.array.length).to be_empty
      array << num
      expect(subject.array.length).to eq(1)
    end
  end

  ##
end
