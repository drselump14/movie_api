require "spec_helper"

RSpec.describe MovieRepository do
  let(:repo) { described_class.new }
  let(:user_repository) { UserRepository.new }
  let(:user) { user_repository.create(name: Faker::Name.name) }

  describe "#load_favorited_by_user" do
    let(:movie_repository) { MovieRepository.new }
    let(:movie) { movie_repository.create(title: Faker::Movie.title) }
    let!(:favorite) { FavoriteRepository.new.create(user_id: user.id, movie_id: movie.id) }

    context "when user already add favorite to same movie" do
      subject(:movies) { repo.load_favorited_by_user(user.id) }
      it { expect(movies).to include movie }
    end
  end

  describe "#search_title" do
    let(:movie_repository) { MovieRepository.new }
    let(:movie_title) { Faker::Movie.title }
    let!(:movie) { movie_repository.create(title: movie_title) }

    context "when user already add favorite to same movie" do
      subject(:movies) { repo.search_title(movie_title) }
      it { expect(movies).to include movie }
    end
  end
end
