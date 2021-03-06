# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-types` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Dry
  class << self
    def AutoInject(container, options = T.unsafe(nil)); end
    def Equalizer(*keys, **options); end
  end
end

module Dry::Types
  include ::Dry::Core::Constants
  extend ::Dry::Core::Constants
  extend ::Dry::Configurable
  extend ::Dry::Configurable::Methods
  extend ::Dry::Configurable::ClassMethods
  extend ::Dry::Core::Extensions

  class << self
    def Rule(options); end
    def [](name); end
    def container; end
    def define_constants(namespace, identifiers); end
    def finalize; end
    def identifier(klass); end
    def module; end
    def register(name, type = T.unsafe(nil), &block); end
    def register_class(klass, meth = T.unsafe(nil)); end
    def registered?(class_or_identifier); end
    def rule_compiler; end
    def type_keys; end
    def type_map; end
  end
end

Dry::Types::ALL_PRIMITIVES = T.let(T.unsafe(nil), Hash)
Dry::Types::Any = T.let(T.unsafe(nil), T.untyped)

class Dry::Types::Array < ::Dry::Types::Definition
  def member(type); end
  def of(type); end
end

class Dry::Types::Array::Member < ::Dry::Types::Array
  def initialize(primitive, options = T.unsafe(nil)); end

  def [](input, meth = T.unsafe(nil)); end
  def call(input, meth = T.unsafe(nil)); end
  def member; end
  def to_ast(meta: T.unsafe(nil)); end
  def try(input, &block); end
  def valid?(value); end
end

module Dry::Types::Builder
  include ::Dry::Core::Constants

  def constrained(options); end
  def constrained_type; end
  def constructor(constructor = T.unsafe(nil), **options, &block); end
  def default(input = T.unsafe(nil), &block); end
  def enum(*values); end
  def optional; end
  def safe; end
  def |(other); end
end

Dry::Types::Builder::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
Dry::Types::Builder::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
Dry::Types::Builder::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
Dry::Types::Builder::EMPTY_SET = T.let(T.unsafe(nil), Set)
Dry::Types::Builder::EMPTY_STRING = T.let(T.unsafe(nil), String)
Dry::Types::Builder::IDENTITY = T.let(T.unsafe(nil), Proc)
Dry::Types::Builder::Self = T.let(T.unsafe(nil), Proc)
Dry::Types::Builder::Undefined = T.let(T.unsafe(nil), Object)
Dry::Types::COERCIBLE = T.let(T.unsafe(nil), Hash)

module Dry::Types::Coercions
  include ::Dry::Core::Constants

  def to_date(input); end
  def to_date_time(input); end
  def to_nil(input); end
  def to_time(input); end

  private

  def empty_str?(value); end
end

Dry::Types::Coercions::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
Dry::Types::Coercions::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
Dry::Types::Coercions::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
Dry::Types::Coercions::EMPTY_SET = T.let(T.unsafe(nil), Set)
Dry::Types::Coercions::EMPTY_STRING = T.let(T.unsafe(nil), String)

module Dry::Types::Coercions::Form
  extend ::Dry::Core::Constants
  extend ::Dry::Types::Coercions

  class << self
    def to_ary(input); end
    def to_decimal(input); end
    def to_false(input); end
    def to_float(input); end
    def to_hash(input); end
    def to_int(input); end
    def to_true(input); end
  end
end

Dry::Types::Coercions::Form::BOOLEAN_MAP = T.let(T.unsafe(nil), Hash)
Dry::Types::Coercions::Form::FALSE_VALUES = T.let(T.unsafe(nil), Array)
Dry::Types::Coercions::Form::TRUE_VALUES = T.let(T.unsafe(nil), Array)
Dry::Types::Coercions::IDENTITY = T.let(T.unsafe(nil), Proc)

module Dry::Types::Coercions::JSON
  extend ::Dry::Core::Constants
  extend ::Dry::Types::Coercions

  class << self
    def to_decimal(input); end
  end
end

Dry::Types::Coercions::Self = T.let(T.unsafe(nil), Proc)
Dry::Types::Coercions::Undefined = T.let(T.unsafe(nil), Object)

class Dry::Types::Compiler
  def initialize(registry); end

  def call(ast); end
  def merge_with(hash_id, constructor, schema); end
  def registry; end
  def visit(node); end
  def visit_array(node); end
  def visit_constructor(node); end
  def visit_definition(node); end
  def visit_form_array(node); end
  def visit_form_hash(node); end
  def visit_hash(node); end
  def visit_json_array(node); end
  def visit_json_hash(node); end
  def visit_member(node); end
  def visit_safe(node); end
  def visit_sum(node); end
end

class Dry::Types::Constrained
  include ::Dry::Types::Type
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Types::Options
  include ::Dry::Types::Decorator
  include ::Dry::Core::Constants
  include ::Dry::Types::Builder

  def initialize(type, options); end

  def ===(value); end
  def [](input); end
  def call(input); end
  def constrained(options); end
  def constrained?; end
  def rule; end
  def to_ast(meta: T.unsafe(nil)); end
  def try(input, &block); end
  def valid?(value); end

  private

  def decorate?(response); end
end

class Dry::Types::Constrained::Coercible < ::Dry::Types::Constrained
  def try(input, &block); end
end

class Dry::Types::ConstraintError < ::TypeError
  def initialize(result, input); end

  def input; end
  def result; end
  def to_s; end
end

class Dry::Types::Constructor < ::Dry::Types::Definition
  def initialize(type, options = T.unsafe(nil), &block); end

  def [](input); end
  def call(input); end
  def constrained_type; end
  def constructor(new_fn = T.unsafe(nil), **options, &block); end
  def fn; end
  def name; end
  def primitive; end
  def to_ast(meta: T.unsafe(nil)); end
  def try(input, &block); end
  def type; end
  def valid?(value); end

  private

  def method_missing(meth, *args, &block); end
  def register_fn(fn); end
  def respond_to_missing?(meth, include_private = T.unsafe(nil)); end

  class << self
    def new(input, options = T.unsafe(nil), &block); end
  end
end

class Dry::Types::Container
  include ::Dry::Container::Mixin::Initializer
  include ::Dry::Container::Mixin
  extend ::Dry::Core::Constants
  extend ::Dry::Configurable
  extend ::Dry::Configurable::Methods
  extend ::Dry::Configurable::ClassMethods

  def config; end
end

module Dry::Types::Decorator
  include ::Dry::Types::Options

  def initialize(type, *_arg1); end

  def constrained?; end
  def constructor; end
  def default?; end
  def try(input, &block); end
  def type; end
  def valid?(value); end

  private

  def decorate?(response); end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = T.unsafe(nil)); end
end

class Dry::Types::Default
  include ::Dry::Types::Type
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Types::Options
  include ::Dry::Types::Decorator
  include ::Dry::Core::Constants
  include ::Dry::Types::Builder

  def initialize(type, value, *_arg2); end

  def [](input); end
  def call(input); end
  def constrained(*args); end
  def default?; end
  def evaluate; end
  def try(input); end
  def value; end

  class << self
    def [](value); end
  end
end

class Dry::Types::Default::Callable < ::Dry::Types::Default
  def evaluate; end
end

class Dry::Types::Definition
  include ::Dry::Types::Type
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Types::Options
  include ::Dry::Core::Constants
  include ::Dry::Types::Builder

  def initialize(primitive, options = T.unsafe(nil)); end

  def ===(value); end
  def [](input); end
  def call(input); end
  def constrained?; end
  def default?; end
  def failure(input, error); end
  def name; end
  def optional?; end
  def options; end
  def primitive; end
  def primitive?(value); end
  def result(klass, *args); end
  def success(input); end
  def to_ast(meta: T.unsafe(nil)); end
  def try(input, &block); end
  def valid?(value); end

  class << self
    def [](primitive); end
  end
end

Dry::Types::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
Dry::Types::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
Dry::Types::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
Dry::Types::EMPTY_SET = T.let(T.unsafe(nil), Set)
Dry::Types::EMPTY_STRING = T.let(T.unsafe(nil), String)

class Dry::Types::Enum
  include ::Dry::Types::Type
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Types::Options
  include ::Dry::Types::Decorator

  def initialize(type, options); end

  def [](input); end
  def call(input); end
  def default(*_arg0); end
  def mapping; end
  def to_ast(meta: T.unsafe(nil)); end
  def values; end
end

class Dry::Types::FnContainer
  class << self
    def [](function_name); end
    def container; end
    def register(function); end
    def register_name(function); end
  end
end

class Dry::Types::Hash < ::Dry::Types::Definition
  def permissive(type_map); end
  def schema(type_map, klass = T.unsafe(nil)); end
  def strict(type_map); end
  def strict_with_defaults(type_map); end
  def symbolized(type_map); end
  def weak(type_map); end

  private

  def resolve_missing_value(_result, _key, _type); end
end

class Dry::Types::Hash::Permissive < ::Dry::Types::Hash::Schema
  private

  def hash_type; end
  def resolve_missing_value(_, key, _); end
end

class Dry::Types::Hash::Schema < ::Dry::Types::Hash
  def initialize(_primitive, options); end

  def [](hash); end
  def call(hash); end
  def member_types; end
  def to_ast(meta: T.unsafe(nil)); end
  def try(hash, &block); end

  private

  def coerce(hash); end
  def hash_type; end
  def resolve(hash); end
  def resolve_missing_value(result, key, type); end
  def try_coerce(hash); end
end

class Dry::Types::Hash::Strict < ::Dry::Types::Hash::Permissive
  private

  def hash_type; end
  def resolve(hash); end
end

class Dry::Types::Hash::StrictWithDefaults < ::Dry::Types::Hash::Strict
  private

  def hash_type; end
  def resolve_missing_value(result, key, type); end
end

class Dry::Types::Hash::Symbolized < ::Dry::Types::Hash::Weak
  private

  def hash_type; end
  def resolve(hash); end
end

class Dry::Types::Hash::Weak < ::Dry::Types::Hash::Schema
  def try(value, &block); end

  private

  def hash_type; end

  class << self
    def new(primitive, options); end
  end
end

Dry::Types::IDENTITY = T.let(T.unsafe(nil), Proc)

class Dry::Types::MissingKeyError < ::Dry::Types::SchemaKeyError
  def initialize(key); end
end

Dry::Types::NON_COERCIBLE = T.let(T.unsafe(nil), Hash)
Dry::Types::NON_NIL = T.let(T.unsafe(nil), Hash)

module Dry::Types::Options
  def initialize(*args, meta: T.unsafe(nil), **options); end

  def meta(data = T.unsafe(nil)); end
  def options; end
  def pristine; end
  def with(new_options); end
end

class Dry::Types::Result
  include ::Dry::Core::Equalizer::Methods

  def initialize(input); end

  def input; end
end

class Dry::Types::Result::Failure < ::Dry::Types::Result
  def initialize(input, error); end

  def error; end
  def failure?; end
  def success?; end
  def to_s; end
end

class Dry::Types::Result::Success < ::Dry::Types::Result
  def failure?; end
  def success?; end
end

class Dry::Types::Safe
  include ::Dry::Types::Type
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Types::Options
  include ::Dry::Types::Decorator
  include ::Dry::Core::Constants
  include ::Dry::Types::Builder

  def [](input); end
  def call(input); end
  def safe; end
  def to_ast(meta: T.unsafe(nil)); end
  def try(input, &block); end

  private

  def decorate?(response); end
end

class Dry::Types::SchemaError < ::TypeError
  def initialize(key, value, result); end
end

class Dry::Types::SchemaKeyError < ::KeyError; end
Dry::Types::Self = T.let(T.unsafe(nil), Proc)

class Dry::Types::Sum
  include ::Dry::Types::Type
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Core::Constants
  include ::Dry::Types::Builder
  include ::Dry::Types::Options

  def initialize(left, right, options = T.unsafe(nil)); end

  def [](input); end
  def call(input); end
  def constrained?; end
  def default?; end
  def left; end
  def maybe?; end
  def name; end
  def optional?; end
  def primitive?(value); end
  def right; end
  def to_ast(meta: T.unsafe(nil)); end
  def try(input, &block); end
  def valid?(value); end
end

class Dry::Types::Sum::Constrained < ::Dry::Types::Sum
  def [](input); end
  def call(input); end
  def constrained?; end
  def rule; end
end

Dry::Types::TYPE_SPEC_REGEX = T.let(T.unsafe(nil), Regexp)
module Dry::Types::Type; end
Dry::Types::Undefined = T.let(T.unsafe(nil), Object)

class Dry::Types::UnknownKeysError < ::Dry::Types::SchemaKeyError
  def initialize(*keys); end
end

Dry::Types::VERSION = T.let(T.unsafe(nil), String)
