require 'spec_helper'

describe User do
	before { @user = User.new(name: "Example user", city: "Example user", age: "Example user") }

	subject{ @user }

	it { should respond_to(:name) }
	it { should respond_to(:city) }
	it { should respond_to(:age) }

	it { should be_valid }

	describe "when name is not present" do
		before { @user.name = "" }
		it { should_not be_valid }
	end

	describe "when city is not present" do
		before { @user.city = ""}
		it { should_not be_valid}
	end

	describe "when age is not present" do
		before { @user.age = ""}
		it { should_not be_valid }
	end
end
 