# frozen_string_literal: true

require "spec_helper"

RSpec.describe Web::Controllers::Favorites::Create do
  include_context "setup_user_token"
  let(:action) { described_class.new }
  let(:movie_repository) { MovieRepository.new }
  let(:movie_title) { Faker::Movie.title }
  let!(:movie) { movie_repository.create(title: movie_title) }
  let(:action) { described_class.new }
  let(:params) do
    {
      movie_id: movie.id
    }
  end
  subject(:response) { action.call(params.merge(headers)) }

  it "is successful" do
    expect(response[0]).to be(200)
  end

  context "when user already favorite the movie" do
    let!(:favorite) { FavoriteRepository.new.create(user_id: user.id, movie_id: movie.id) }

    it { expect(response[0]).to be(400) }
  end

  it_behaves_like "unauthorized_response"
end
