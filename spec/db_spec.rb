require 'spec_helper'
require './lib/rps.rb'
include RPS

describe "db" do
  it "exists" do
    expect(DB).to be_a(Class)
  end

  it "returns a db" do
    expect(RPS.db).to be_a(DB)
  end

  it "is a singleton" do
    db1 = RPS.db
    db2 = RPS.db
    expect(db1).to be(db2)
  end

  describe "users in db" do
    let(:data) do
      data = {
          name: "Taylor",
          password: "password"
        }
      end
    describe ".build_user" do
      it "returns a User object" do
        user = RPS.db.build_user(data)
        expect(user).to be_a(User)
        expect(user.name).to eq("Taylor")
        expect(user.password).to eq("password")
      end
    end
    describe ".create_user" do
      it "puts a User in the database" do
        user = RPS.db.create_user(data)
        expect(user).to be_a(User)
        expect(user.id).to be_a(Fixnum)
      end
    end
  end
end
