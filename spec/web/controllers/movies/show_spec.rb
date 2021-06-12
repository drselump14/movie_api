require_relative "../../../../apps/web/controllers/movies/show"

RSpec.describe Web::Controllers::Movies::Show do
  let(:action) { described_class.new }
  let(:movie_repository) { MovieRepository.new }
  let(:movie) { Movie.new(title: "title") }
  let(:action) { described_class.new(movie_repository: movie_repository) }
  let(:params) { Hash[] }

  before :each do
    allow(movie_repository).to receive(:find) { movie }
  end

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to be(200)
    expect(response[2][0]).to eq movie.to_h.to_json
  end
end
