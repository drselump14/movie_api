# frozen_string_literal: true

require "spec_helper"

RSpec.describe FavoriteRepository, type: :repository do
  let(:repo) { described_class.new }
  describe "#create" do
    let(:user_repository) { UserRepository.new }
    let(:user) { user_repository.create(name: Faker::Name.name) }
    let(:movie_repository) { MovieRepository.new }
    let(:movie) { movie_repository.create(title: Faker::Movie.title) }

    it "should be successful" do
      expect(repo.create(user_id: user.id, movie_id: movie.id)).to be_truthy
    end

    context "when user already add favorite to same movie" do
      let!(:favorite) { repo.create(user_id: user.id, movie_id: movie.id) }
      it "should not be successful" do
        expect { repo.create(user_id: user.id, movie_id: movie.id) }.to raise_error(Hanami::Model::UniqueConstraintViolationError)
      end
    end
  end
end
