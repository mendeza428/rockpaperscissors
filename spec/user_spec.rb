require 'spec_helper'
require './lib/rps.rb'
include RPS

describe "users" do
  it "exists" do
    expect(User).to be_a(Class)
  end

  describe '.sign_in' do
    let(:user) do
      data = {
          name: "Taylor",
          password: "password"
        }
      user = User.new(data)
    end

    it "returns true when passwords match" do
      result = user.sign_in("password")
      expect(result).to eq(true)
    end
    it "returns false when passwords don't match" do
      result = user.sign_in("notapassword")
      expect(result).to eq(false)
    end
  end
end
