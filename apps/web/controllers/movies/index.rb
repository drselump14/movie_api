# typed: true
# frozen_string_literal: true

module Web
  module Controllers
    module Movies
      class Index
        extend T::Sig
        include Web::Action

        def initialize(movie_repository: MovieRepository.new)
          @movie_repository = movie_repository
        end

        def call(params)
          movies = params[:search] ? @movie_repository.search_title(params[:search]) : @movie_repository.all
          self.body = movies.map(&:to_h).to_json
        end
      end
    end
  end
end
