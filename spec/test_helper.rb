# typed: strict
# frozen_string_literal: true

# Require this file for unit tests
ENV["HANAMI_ENV"] ||= "test"

require_relative "../config/environment"
require "minitest/autorun"

module MiniTest
  class TestCase
    include FactoryBot::Syntax::Methods
  end
end

Hanami.boot