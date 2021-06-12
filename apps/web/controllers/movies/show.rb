# typed: true
# frozen_string_literal: true

module Web
  module Controllers
    module Movies
      class Show
        extend T::Sig
        include Web::Action

        def initialize(movie_repository: MovieRepository.new)
          @movie_repository = movie_repository
        end

        def call(params)
          self.body = @movie_repository
                      .find(params[:id])
                      .to_h
                      .to_json
        end
      end
    end
  end
end
