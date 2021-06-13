# typed: ignore
# frozen_string_literal: true

# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

get "/favorites", to: "favorites#index"
post "/favorites/:movie_id", to: "favorites#create"
resources :movies, only: %i[index show]
