# typed: strong
# frozen_string_literal: true

class MovieRepository < Hanami::Repository
  extend T::Sig

  sig { returns(Hanami::Model::MappedRelation) }
  def movies; end

  sig { returns(Hanami::Model::MappedRelation) }
  def users; end
end
