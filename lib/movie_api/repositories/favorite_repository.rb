# typed: strict
# frozen_string_literal: true

class FavoriteRepository < Hanami::Repository
  associations do
    belongs_to :user
    belongs_to :movie
  end
end
