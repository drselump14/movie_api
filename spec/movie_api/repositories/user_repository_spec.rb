require "spec_helper"

RSpec.describe UserRepository, type: :repository do
  let(:repo) { described_class.new }
  describe "#generate_jwt" do
    let(:user_id) { Faker::Number.digit }

    it "should be generate_jwt" do
      jwt = repo.generate_jwt(user_id)

      payload, = JWT.decode(jwt, nil, false)

      expect(payload["user_id"]).to eq user_id
    end
  end
end
