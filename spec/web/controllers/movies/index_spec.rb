# frozen_string_literal: true

require "spec_helper"

RSpec.describe Web::Controllers::Movies::Index do
  include_context "setup_user_token"
  let(:params) { Hash[] }
  let(:movie_repository) { MovieRepository.new }
  let(:movie_title) { Faker::Movie.title }
  let!(:movie) { movie_repository.create(title: movie_title) }
  let!(:another_movie) { movie_repository.create(title: "another_title") }
  let(:action) { described_class.new(movie_repository: movie_repository) }

  subject(:response) { action.call(params.merge(headers)) }

  it "is successful" do
    expect(response[0]).to be(200)
    expect(response[2][0]).to eq [movie, another_movie].map(&:to_h).to_json
  end

  context "when search params present" do
    let(:params) do
      {
        search: movie_title
      }
    end

    it "is successful" do
      expect(response[0]).to be(200)
      expect(response[2][0]).to eq [movie].map(&:to_h).to_json
    end
  end

  it_behaves_like "unauthorized_response"
end
