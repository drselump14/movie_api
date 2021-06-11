# typed: strict
# frozen_string_literal: true

# Require this file for feature tests
require_relative "./spec_helper"
require "factory_bot"

module Minitest
  class Unit
    class TestCase
      include FactoryBot::Syntax::Methods
    end
  end
end
