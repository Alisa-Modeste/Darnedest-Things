require "spec_helper"

describe User do

  describe "::generate_session_token" do
    it "returns a randomized string of length 24" do
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
      attributes = {email: "bob@aol.com", password: "fluffy123", name: "bob"}
      user = User.create(attributes)

      found_user = User.find_by_credentials(attributes[:email], attributes[:password])
      expect(found_user).to eq(user)
    end

    it "shouldn't find the user" do
      attributes = {email: "bob@aol.com", password: "fluffy123", name: "bob"}

      found_user = User.find_by_credentials(attributes[:email], attributes[:password])
      expect(found_user).to eq(nil)
    end
  end


  describe "#ensure_session_token" do
    it "has set the session token" do
      user = User.new()
	  user.ensure_session_token

      expect(user.session_token).not_to eq(nil)
    end
  end

  describe "#reset_session_token!" do
    it "should change the session token" do
      user = User.create({email: "tttttt@aol.com", password: "tttttt", name: "t"})
      old_session_token = user.session_token.dup

      user.reset_session_token!
      expect(user.session_token).not_to eq(old_session_token)
    end
  end

  it "#password"

  it "::get_follows"

end