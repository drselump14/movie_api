# typed: strong
module MovieApi
end

class Favorite < Hanami::Entity
end

class Movie < Hanami::Entity
  extend T::Sig
end

class User < Hanami::Entity
end

class FavoriteRepository < Hanami::Repository
end

class MovieRepository < Hanami::Repository
end

class UserRepository < Hanami::Repository
  extend T::Sig
end
