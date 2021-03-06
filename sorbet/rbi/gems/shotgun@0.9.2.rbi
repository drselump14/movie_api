# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `shotgun` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Shotgun
  class << self
    def after_fork(&block); end
    def after_fork!; end
    def before_fork(&block); end
    def before_fork!; end
    def enable_copy_on_write; end
    def new(rackup_file, &block); end
    def preload(files = T.unsafe(nil)); end
  end
end

class Shotgun::Loader
  include ::Rack::Utils

  def initialize(rackup_file, &block); end

  def assemble_app; end
  def call(env); end
  def call!(env); end
  def camel_case(string); end
  def format_error(error, backtrace); end
  def inner_app; end
  def proceed_as_child; end
  def proceed_as_parent; end
  def rackup_file; end
  def spec_body(body); end
end

class Shotgun::Loader::Body < ::Struct
  def close; end
  def each; end
end

class Shotgun::SkipFavicon < ::Struct
  def call(env); end
end

class Shotgun::Static
  def initialize(app, public_dir = T.unsafe(nil)); end

  def call(env); end
end
