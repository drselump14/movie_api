# rakelib/export.rake
# typed: false
# frozen_string_literal: true

namespace :db do
  desc "Seed User and Movie"
  task seed: :environment do
    user_repository = UserRepository.new
    (user_repository.find(1) && user_repository.update(1, name: "Monstar-lab")) || user_repository.create(id: 1, name: "Monstar-lab")

    movie_titles = %w[
      iron_man
      spiderman
      captain_marvel
      antman
      black_panther
      doctor_strange
    ]

    movie_repository = MovieRepository.new
    movie_titles.each_with_index do |title, index|
      id = index + 1
      (movie_repository.find(id) && movie_repository.update(id, name: "Monstar-lab")) || movie_repository.create(id: id, title: title)
    end
  end
end
