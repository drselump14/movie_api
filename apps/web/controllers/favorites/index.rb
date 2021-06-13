# typed: false
# frozen_string_literal: true

module Web
  module Controllers
    module Favorites
      class Index
        extend T::Sig
        include Web::Action

        def initialize(movie_repository: MovieRepository.new)
          @movie_repository = movie_repository
        end

        def call(_params)
          movies = @movie_repository.load_favorited_by_user(current_user.id)
          self.body = movies.map(&:to_h).to_json
        end
      end
    end
  end
end
