# typed: false
# frozen_string_literal: true

class DatabaseConfig < BaseConfig
  extend T::Sig

  attr_config(
    :database,
    :username,
    port: 5432,
    host: "localhost",
    password: nil,
    pool: 5
  )

  sig { returns(String) }
  def url
    "postgres://#{host}:#{port}/#{database}"
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def opts
    {
      username: username,
      password: password,
      pool: pool
    }
  end
end
