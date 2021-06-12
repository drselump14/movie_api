require_relative "../../../../apps/web/controllers/movies/index"

RSpec.describe Web::Controllers::Movies::Index do
  let(:params) { Hash[] }
  let(:movie_repository) { MovieRepository.new }
  let(:movie) { Movie.new(title: "title") }
  let(:action) { described_class.new(movie_repository: movie_repository) }

  before :each do
    allow(movie_repository).to receive(:all) { [movie] }
  end

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to be(200)
    expect(response[2][0]).to eq [movie].map(&:to_h).to_json
  end
end
