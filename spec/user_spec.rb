require "spec_helper"

describe User do

  describe "::generate_session_token" do
    it "returns a randomized string" do
      s = User.generate_session_token

      expect(s.length).to eq(24)
    end

    it "should return different strings" do
      t = User.generate_session_token
      s = User.generate_session_token

      expect(s).not_to eq(t)
    end

    # it "should fail" do
   #    t = User.generate_session_token
   #    s = User.generate_session_token
   #
   #    expect(s).to eq(t)
   #  end
  end

  describe "::find_by_credentials" do
    it "should find user" do
      attributes = {email: "t", password: "t", name: "t"}
      user = User.create(attributes)

      found_user = User.find_by_credentials(attributes[:email], attributes[:password])
      expect(found_user).to eq(user)
    end
  end


  it "#ensure_session_token"

  it "#reset_session_token!"

  it "#password"

  it "::get_follows"

end