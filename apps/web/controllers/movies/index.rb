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

        def call(_params)
          self.body = @movie_repository.all.map(&:to_h).to_json
        end
      end
    end
  end
end
