# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `declarative-builder` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Declarative; end

module Declarative::Builder
  mixes_in_class_methods ::Declarative::Builder::Build

  class << self
    def included(base); end
  end
end

module Declarative::Builder::Build
  def build!(context, *args, **options); end
end

class Declarative::Builder::Builders < ::Array
  def <<(proc); end
  def call(context, *args, **options); end
end

module Declarative::Builder::DSL
  def builders; end
  def builds(proc = T.unsafe(nil), &block); end
end
