# typed: strict
# frozen_string_literal: true

class UserRepository < Hanami::Repository
  extend T::Sig

  associations do
    has_many :favorites
    has_many :movies, through: :favorites
  end
end
