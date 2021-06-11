# typed: strong
# frozen_string_literal: true

module MiniTest
  class TestCase < Minitest::Test
    def self.assert(**args); end
  end
end
