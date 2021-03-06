# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `reform` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Reform; end

class Reform::Contract < ::Disposable::Twin
  extend ::Disposable::Twin::Sync::ToNestedHash::ClassMethods
  include ::Disposable::Twin::Expose
  include ::Disposable::Twin::Setup::SkipSetter
  include ::Disposable::Twin::Default
  include ::Reform::Contract::Validate
  include ::Reform::Validation
  include ::Disposable::Twin::Sync::ToNestedHash
  include ::Disposable::Twin::Sync::SyncOptions
  include ::Disposable::Twin::Sync::Writeable
  include ::Disposable::Twin::Sync
  include ::Reform::Contract::Readonly
  extend ::Disposable::Twin::Expose::ClassMethods
  extend ::Disposable::Twin::Default::ClassMethods
  extend ::Reform::Validation::ClassMethods
  include ::Disposable::Twin::Expose::Initialize

  class << self
    def clone; end
    def default_nested_class; end
    def options_for(name); end
    def properties(*args); end
    def property(name, options = T.unsafe(nil), &block); end
  end
end

class Reform::Contract::CustomError
  def initialize(key, error_text, results); end

  def errors(**_args); end
  def failure?; end
  def hint; end
  def merge!; end
  def messages; end
  def success?; end
end

module Reform::Contract::Readonly
  def options_for(name); end
  def readonly?(name); end
end

class Reform::Contract::Result
  def initialize(results, nested_results = T.unsafe(nil)); end

  def add_error(key, error_text); end
  def errors(*args); end
  def failure?; end
  def hints(*args); end
  def messages(*args); end
  def success?; end
  def to_results; end

  private

  def filter_for(method, *args); end
end

class Reform::Contract::Result::Errors
  def initialize(result, form); end

  def [](name); end
  def add(key, error_test); end
  def empty?; end
  def full_messages; end
  def messages(*args); end
  def size; end
end

Reform::Contract::Result::Errors::DottedErrors = T.let(T.unsafe(nil), Proc)

class Reform::Contract::Result::Pointer
  extend ::Forwardable

  def initialize(result, path); end

  def advance(*path); end
  def errors(*args); end
  def failure?(*args, &block); end
  def hints(*args); end
  def messages(*args); end
  def success?(*args, &block); end

  private

  def traverse(hash, path); end
  def traverse_for(method, *args); end
end

module Reform::Contract::Validate
  def initialize(*_arg0); end

  def custom_errors; end
  def errors(*args); end
  def to_result; end
  def validate; end
  def validate!(name, pointers = T.unsafe(nil)); end

  private

  def validate_nested!(pointers); end
end

class Reform::Form < ::Reform::Contract
  include ::Reform::Form::Validate
  include ::Disposable::Twin::Changed
  include ::Disposable::Twin::Sync::SkipGetter
  include ::Disposable::Twin::Save
  include ::Reform::Form::Prepopulate
  include ::Reform::Form::Call
  extend ::Reform::Form::Property

  def skip!; end

  class << self
    def default_nested_class; end
    def deserializer_class; end
    def deserializer_class=(_arg0); end
  end
end

module Reform::Form::Call
  def call(params, &block); end
end

class Reform::Form::Call::Result < ::SimpleDelegator
  def initialize(success, data); end

  def failure?; end
  def success?; end
end

module Reform::Form::Composition
  include ::Disposable::Twin::Expose::Initialize
  include ::Disposable::Twin::Composition

  mixes_in_class_methods ::Reform::Form::Composition::ClassMethods

  class << self
    def included(base); end
  end
end

module Reform::Form::Composition::ClassMethods
  def model(main_model, options = T.unsafe(nil)); end
end

Reform::Form::Deserialize = T.let(T.unsafe(nil), Proc)
class Reform::Form::InvalidOptionsCombinationError < ::StandardError; end

module Reform::Form::Module
  mixes_in_class_methods ::Reform::Form::Module::Included

  class << self
    def included(base); end
  end
end

module Reform::Form::Module::ClassMethods
  def method_missing(method, *args, &block); end
end

module Reform::Form::Module::Included
  def included(includer); end
end

class Reform::Form::Populator
  def initialize(user_proc); end

  def call(input, options); end

  private

  def call!(options); end
  def evaluate_option(form, options); end
  def get(options); end
  def handle_fail(twin, options); end
end

class Reform::Form::Populator::External
  def call(input, options); end
end

class Reform::Form::Populator::IfEmpty < ::Reform::Form::Populator
  def call!(options); end

  private

  def deprecate_positional_args(form, proc, options); end
  def run!(form, fragment, options); end
end

class Reform::Form::Populator::Sync < ::Reform::Form::Populator
  def call!(options); end
end

module Reform::Form::Prepopulate
  def prepopulate!(options = T.unsafe(nil)); end

  private

  def prepopulate_local!(options); end
  def prepopulate_nested!(options); end
end

module Reform::Form::Property
  def property(name, options = T.unsafe(nil), &block); end
end

module Reform::Form::Validate
  def deserialize(params); end
  def input_params; end
  def validate(params); end

  private

  def deserialize!(params); end
  def deserializer(*args); end
  def deserializer!(source = T.unsafe(nil), options = T.unsafe(nil)); end

  class << self
    def included(includer); end
  end
end

module Reform::Form::Validate::Skip; end

class Reform::Form::Validate::Skip::AllBlank
  include ::Uber::Callable

  def call(input:, binding:, **_arg2); end
end

module Reform::Validation
  mixes_in_class_methods ::Reform::Validation::ClassMethods

  def valid?; end

  class << self
    def included(includer); end
  end
end

module Reform::Validation::ClassMethods
  def deprecate_validation_positional_args(name, options); end
  def validation(name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def validation_group_class; end
  def validation_groups; end
end

class Reform::Validation::Groups < ::Array
  def initialize(group_class); end

  def add(name, options); end

  private

  def [](name); end
  def index_for(options); end
end

class Reform::Validation::Groups::Validate
  class << self
    def call(groups, form); end
    def evaluate?(depends_on, results, form); end
  end
end

class Reform::Validation::NoValidationLibraryError < ::RuntimeError; end
