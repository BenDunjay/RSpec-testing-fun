require "rails_helper"
require "./app/models/user.rb"

RSpec.describe User, type: :model do #creates the subject,
  subject { described_class.new(name: "John") }
  it "initializes a name" do
    expect(subject.name).to eq("John")
  end

  context "with no argument" do
    subject { described_class.new }
    it "should default to Bill as the name" do
      expect(subject.name).to eq("Bill")
    end
  end

  it "method calls the name" do
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
end
