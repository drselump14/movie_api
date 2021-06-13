require "spec_helper"

RSpec.describe MovieRepository do
  let(:repo) { described_class.new }

  describe "#load_favorited_by_user" do
    let(:user_repository) { UserRepository.new }
    let(:user) { user_repository.create(name: Faker::Name.name) }
    let(:movie_repository) { MovieRepository.new }
    let(:movie) { movie_repository.create(title: Faker::Movie.title) }
    let!(:favorite) { FavoriteRepository.new.create(user_id: user.id, movie_id: movie.id) }

    context "when user already add favorite to same movie" do
      subject(:movies) { repo.load_favorited_by_user(user.id) }
      it { expect(movies).to include movie }
    end
  end
end
