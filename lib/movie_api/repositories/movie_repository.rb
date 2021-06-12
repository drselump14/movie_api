# typed: strict
# frozen_string_literal: true

class MovieRepository < Hanami::Repository
  associations do
    has_many :favorites
  end
end
