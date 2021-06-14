# typed: false
# frozen_string_literal: true

class MovieRepository < Hanami::Repository
  extend T::Sig

  associations do
    has_many :favorites
    has_many :users, through: :favorites
  end

  sig { params(user_id: Integer).returns(T::Array[Movie]) }
  def load_favorited_by_user(user_id)
    movies
      .join(users)
      .where(users[:id].qualified => user_id)
      .to_a
  end

  sig { params(query: String).returns(T::Array[Movie]) }
  def search_title(query)
    movies.where { title.ilike("%#{query}%") }.to_a
  end
end
