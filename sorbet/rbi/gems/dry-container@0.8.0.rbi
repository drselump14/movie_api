# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-container` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Dry
  class << self
    def AutoInject(container, options = T.unsafe(nil)); end
    def Equalizer(*keys, **options); end
  end
end

class Dry::Container
  include ::Dry::Container::Mixin::Initializer
  include ::Dry::Container::Mixin
  extend ::Dry::Core::Constants
  extend ::Dry::Configurable
  extend ::Dry::Configurable::Methods
  extend ::Dry::Configurable::ClassMethods

  def config; end
end

Dry::Container::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
class Dry::Container::Error < ::StandardError; end

class Dry::Container::Item
  def initialize(item, options = T.unsafe(nil)); end

  def call; end
  def callable?; end
  def item; end
  def map(func); end
  def options; end
  def value?; end
end

class Dry::Container::Item::Callable < ::Dry::Container::Item
  def call; end
end

class Dry::Container::Item::Factory
  def call(item, options = T.unsafe(nil)); end
end

class Dry::Container::Item::Memoizable < ::Dry::Container::Item
  def initialize(item, options = T.unsafe(nil)); end

  def call; end
  def memoize_mutex; end

  private

  def raise_not_supported_error; end
end

module Dry::Container::Mixin
  mixes_in_class_methods ::Dry::Configurable::ClassMethods

  def [](key); end
  def _container; end
  def clone; end
  def decorate(key, with: T.unsafe(nil), &block); end
  def dup; end
  def each(&block); end
  def each_key(&block); end
  def freeze; end
  def import(namespace); end
  def key?(key); end
  def keys; end
  def merge(other, namespace: T.unsafe(nil)); end
  def namespace(namespace, &block); end
  def register(key, contents = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def resolve(key, &block); end

  class << self
    def extended(base); end
    def included(base); end
  end
end

module Dry::Container::Mixin::Initializer
  def initialize(*args, &block); end
end

class Dry::Container::Namespace
  def initialize(name, &block); end

  def block; end
  def name; end
end

class Dry::Container::NamespaceDSL < ::SimpleDelegator
  def initialize(container, namespace, namespace_separator, &block); end

  def import(namespace); end
  def namespace(namespace, &block); end
  def register(key, *args, &block); end
  def resolve(key); end

  private

  def namespaced(key); end
end

Dry::Container::PREFIX_NAMESPACE = T.let(T.unsafe(nil), Proc)

class Dry::Container::Registry
  def initialize; end

  def call(container, key, item, options); end
  def factory; end
end

class Dry::Container::Resolver
  def call(container, key); end
  def each(container, &block); end
  def each_key(container, &block); end
  def key?(container, key); end
  def keys(container); end
end

Dry::Container::VERSION = T.let(T.unsafe(nil), String)
