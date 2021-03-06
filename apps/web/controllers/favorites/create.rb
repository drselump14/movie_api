# typed: false
# frozen_string_literal: true

module Web
  module Controllers
    module Favorites
      class Create
        extend T::Sig
        include Web::Action

        def initialize(movie_repository: MovieRepository.new, favorite_repository: FavoriteRepository.new)
          @movie_repository = movie_repository
          @favorite_repository = favorite_repository
        end

        def call(params)
          @favorite_repository.create(user_id: current_user.id, movie_id: params[:movie_id])
          self.body = "OK"
        rescue Hanami::Model::ForeignKeyConstraintViolationError => e
          halt 400, "Movie not found"
        rescue Hanami::Model::UniqueConstraintViolationError => e
          halt 400, "Movie already registered as favorite"
        end
      end
    end
  end
end
