# typed: false
# frozen_string_literal: true

class UserRepository < Hanami::Repository
  extend T::Sig

  associations do
    has_many :favorites
    has_many :movies, through: :favorites
  end

  sig { params(user_id: Integer).returns(String) }
  def generate_jwt(user_id)
    payload = { user_id: user_id }
    JWT.encode(payload, nil, "none")
  end
end
