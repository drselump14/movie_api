# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rom` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module ROM
  include ::Dry::Core::Constants
  extend ::ROM::Global

  class << self
    def container(*args, &block); end
  end
end

class ROM::AdapterLoadError < ::StandardError; end

class ROM::AdapterNotPresentError < ::StandardError
  def initialize(adapter, component); end
end

class ROM::AdapterPluginRegistry < ::ROM::PluginRegistryBase
  def register(name, mod, options); end
end

class ROM::AssociationSet < ::ROM::Registry
  def [](name); end
  def singularize(key); end
  def try(name, &block); end
end

module ROM::AutoCurry
  def auto_curried_methods; end
  def auto_curry(name, &block); end
  def auto_curry_busy?; end
  def auto_curry_guard; end

  class << self
    def extended(klass); end
  end
end

class ROM::AutoRegistration
  include ::Dry::Initializer::InstanceDSL
  include ::ROM::Initializer::InstanceMethods
  extend ::ROM::Initializer
  extend ::Dry::Initializer

  def commands; end
  def mappers; end
  def relations; end

  private

  def load_entities(entity); end
end

ROM::AutoRegistration::DEFAULT_MAPPING = T.let(T.unsafe(nil), Hash)
ROM::AutoRegistration::NamespaceType = T.let(T.unsafe(nil), Dry::Types::Sum::Constrained)
ROM::AutoRegistration::PathnameType = T.let(T.unsafe(nil), Dry::Types::Constructor)
module ROM::AutoRegistrationStrategies; end

class ROM::AutoRegistrationStrategies::Base
  include ::Dry::Initializer::InstanceDSL
  include ::ROM::Initializer::InstanceMethods
  extend ::ROM::Initializer
  extend ::Dry::Initializer
end

ROM::AutoRegistrationStrategies::Base::EXTENSION_REGEX = T.let(T.unsafe(nil), Regexp)
ROM::AutoRegistrationStrategies::Base::PathnameType = T.let(T.unsafe(nil), Dry::Types::Constrained)

class ROM::AutoRegistrationStrategies::CustomNamespace < ::ROM::AutoRegistrationStrategies::Base
  def call; end

  private

  def file_path; end
  def filename; end
  def name_error_message(attempted); end
  def ns_const; end
  def path_arr; end
end

class ROM::AutoRegistrationStrategies::NoNamespace < ::ROM::AutoRegistrationStrategies::Base
  def call; end
end

class ROM::AutoRegistrationStrategies::WithNamespace < ::ROM::AutoRegistrationStrategies::Base
  def call; end
end

class ROM::Command
  extend ::ROM::Command::ClassInterface
  include ::ROM::Initializer::InstanceMethods
  include ::Dry::Core::Equalizer::Methods
  include ::ROM::Commands
  include ::ROM::Pipeline::Operator
  extend ::ROM::Initializer
  extend ::Dry::Initializer
  extend ::Dry::Core::Constants
  extend ::Dry::Core::ClassAttributes
  extend ::Dry::Core::Deprecations::Interface
  include ::Dry::Initializer::InstanceDSL

  def [](*args, &block); end
  def after(*hooks); end
  def after_hooks; end
  def before(*hooks); end
  def before_hooks; end
  def call(*args, &block); end
  def combine(*others); end
  def curried?; end
  def curry(*args); end
  def execute(*_arg0); end
  def gateway; end
  def graph?; end
  def hooks?; end
  def lazy?; end
  def many?; end
  def name; end
  def new(new_relation); end
  def one?; end
  def with(*args); end
  def with_opts(new_opts); end

  private

  def apply_hooks(hooks, tuples, *args); end
  def composite_class; end
  def wrap_dataset(dataset); end
end

module ROM::Command::ClassInterface
  def [](adapter); end
  def adapter_namespace(adapter); end
  def after(*hooks); end
  def before(*hooks); end
  def build(relation, options = T.unsafe(nil)); end
  def create_class(name, type, &block); end
  def default_name; end
  def extend_for_relation(relation); end
  def inherited(klass); end
  def options; end
  def relation_methods_mod(relation_class); end
  def set_hooks(type, hooks); end
  def use(plugin, _options = T.unsafe(nil)); end

  class << self
    def extended(klass); end
  end
end

ROM::Command::CommandType = T.let(T.unsafe(nil), Dry::Types::Enum)
ROM::Command::Result = T.let(T.unsafe(nil), Dry::Types::Enum)
class ROM::CommandError < ::StandardError; end

class ROM::CommandRegistry
  include ::Dry::Initializer::InstanceDSL
  include ::ROM::Initializer::InstanceMethods
  include ::ROM::Commands
  extend ::ROM::Initializer
  extend ::Dry::Initializer
  extend ::Dry::Core::Deprecations::Interface

  def [](name); end
  def as(mapper_name); end
  def try(&block); end
  def with(new_options); end

  private

  def fetch_command(name); end
  def method_missing(name, *_arg1); end
  def respond_to_missing?(name, include_private = T.unsafe(nil)); end
end

class ROM::CommandRegistry::CommandNotFoundError < ::KeyError; end
ROM::CommandRegistry::RegistryType = T.let(T.unsafe(nil), Dry::Types::Sum)
module ROM::Commands; end

class ROM::Commands::Composite < ::ROM::Pipeline::Composite
  def [](*args); end
  def call(*args); end
  def decorate?(response); end
  def graph?; end
  def result; end
end

class ROM::Commands::Create < ::ROM::Command; end
class ROM::Commands::Delete < ::ROM::Command; end

class ROM::Commands::Graph
  extend ::ROM::Commands::Graph::ClassInterface
  include ::ROM::Initializer::InstanceMethods
  include ::Dry::Core::Equalizer::Methods
  include ::ROM::Pipeline::Operator
  include ::ROM::Pipeline
  include ::ROM::Pipeline::Proxy
  extend ::ROM::Initializer
  extend ::Dry::Initializer
  include ::Dry::Initializer::InstanceDSL

  def call(*args); end
  def graph?; end
  def left; end
  def right; end
  def with(new_options); end

  private

  def composite_class; end
end

class ROM::Commands::Graph::Builder
  def initialize(container); end

  def method_missing(*args, &block); end
end

class ROM::Commands::Graph::Builder::BuilderNode < ::ROM::Commands::Graph::Builder::RootNode
  def initialize(container); end

  def command(*args, &block); end
end

class ROM::Commands::Graph::Builder::CommandNode < ::ROM::Commands::Graph::Builder::Node
  def initialize(command = T.unsafe(nil)); end

  def command(*args, &block); end
  def each(&block); end
  def to_ast; end
end

class ROM::Commands::Graph::Builder::DoubleRestrictionError < ::StandardError; end

class ROM::Commands::Graph::Builder::Node
  def initialize; end

  def command(name, relation = T.unsafe(nil), key = T.unsafe(nil), proc = T.unsafe(nil), &block); end
  def method_missing(*args, &block); end
  def restrict(name, &block); end
  def to_ast; end
end

class ROM::Commands::Graph::Builder::Node::Command < ::Struct
  def key; end
  def key=(_); end
  def name; end
  def name=(_); end
  def proc; end
  def proc=(_); end
  def relation; end
  def relation=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class ROM::Commands::Graph::Builder::Node::Restriction < ::Struct
  def proc; end
  def proc=(_); end
  def relation; end
  def relation=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class ROM::Commands::Graph::Builder::RestrictionNode < ::ROM::Commands::Graph::Builder::Node
  def initialize(restriction, parent_node = T.unsafe(nil)); end

  def command(name, options = T.unsafe(nil), &block); end
  def restrict(*args, &block); end
  def restriction; end
end

class ROM::Commands::Graph::Builder::RootNode < ::ROM::Commands::Graph::Builder::Node
  def command(*args, &block); end
  def to_ast; end
end

class ROM::Commands::Graph::Builder::UnspecifiedRelationError < ::StandardError; end

module ROM::Commands::Graph::ClassInterface
  def build(registry, options, path = T.unsafe(nil)); end
  def build_command(registry, spec, other, path); end
end

class ROM::Commands::Graph::InputEvaluator
  include ::Dry::Core::Equalizer::Methods

  def initialize(tuple_path, excluded_keys); end

  def call(*args); end
  def exclude_proc; end
  def excluded_keys; end
  def tuple_path; end

  class << self
    def build(tuple_path, nodes); end
    def exclude_proc(excluded_keys); end
    def extract_excluded_keys(nodes); end
  end
end

class ROM::Commands::Lazy
  include ::Dry::Core::Equalizer::Methods

  def initialize(command, evaluator, command_proc = T.unsafe(nil)); end

  def >>(other); end
  def call(*args); end
  def combine(*others); end
  def command; end
  def command_proc; end
  def evaluator; end
  def lazy?; end
  def unwrap; end

  private

  def method_missing(name, *args, &block); end
  def respond_to_missing?(name, include_private = T.unsafe(nil)); end

  class << self
    def [](command); end
  end
end

class ROM::Commands::Lazy::Create < ::ROM::Commands::Lazy
  def call(*args); end
end

class ROM::Commands::Lazy::Delete < ::ROM::Commands::Lazy
  def call(*args); end
end

class ROM::Commands::Lazy::Update < ::ROM::Commands::Lazy
  def call(*args); end
end

class ROM::Commands::Result
  def error; end
  def failure?; end
  def success?; end
  def to_a; end
  def to_ary; end
  def value; end
end

class ROM::Commands::Result::Failure < ::ROM::Commands::Result
  def initialize(error); end

  def >(_other); end
  def to_ary; end
end

class ROM::Commands::Result::Success < ::ROM::Commands::Result
  def initialize(value); end

  def >(other); end
  def to_ary; end
end

class ROM::Commands::Update < ::ROM::Command; end

module ROM::Configurable
  def config; end
  def configure; end
end

class ROM::Configurable::Config
  def initialize(settings = T.unsafe(nil)); end

  def [](name); end
  def dup; end
  def freeze; end
  def key?(name); end
  def settings; end
  def to_hash; end

  private

  def dup_settings(settings); end
  def method_missing(meth, *args, &_block); end
  def respond_to_missing?(_name, _include_private = T.unsafe(nil)); end
  def writer?(name); end
end

ROM::Configurable::Config::WRITER_REGEXP = T.let(T.unsafe(nil), Regexp)

class ROM::Configuration
  include ::ROM::ConfigurationDSL
  extend ::Forwardable

  def initialize(*args, &block); end

  def [](name); end
  def adapter_for_gateway(gateway); end
  def auto_registration(*args, &block); end
  def command_classes(*args, &block); end
  def config(*args, &block); end
  def configure(*args, &block); end
  def default_adapter; end
  def default_gateway; end
  def environment; end
  def gateways(*args, &block); end
  def gateways_map(*args, &block); end
  def mapper_classes(*args, &block); end
  def method_missing(name, *_arg1); end
  def register_command(*args, &block); end
  def register_mapper(*args, &block); end
  def register_plugin(*args, &block); end
  def register_relation(*args, &block); end
  def relation_classes(*args, &block); end
  def respond_to?(name, include_all = T.unsafe(nil)); end
  def setup; end
  def use(plugin, options = T.unsafe(nil)); end
end

class ROM::Configuration::NoDefaultAdapterError < ::StandardError; end

module ROM::ConfigurationDSL
  def commands(name, &block); end
  def mappers(&block); end
  def plugin(adapter, spec, &block); end
  def plugin_registry; end
  def relation(name, options = T.unsafe(nil), &block); end
end

class ROM::ConfigurationDSL::Command
  class << self
    def build_class(name, relation, options = T.unsafe(nil), &block); end
    def generate_class_name(adapter, command_type, relation); end
  end
end

class ROM::ConfigurationDSL::CommandDSL
  def initialize(relation, adapter = T.unsafe(nil), &block); end

  def adapter; end
  def command_classes; end
  def define(name, options = T.unsafe(nil), &block); end
  def relation; end
end

class ROM::ConfigurationDSL::Mapper
  class << self
    def build_class(name, mapper_registry, options = T.unsafe(nil), &block); end
  end
end

class ROM::ConfigurationDSL::MapperDSL
  def initialize(registry, mapper_classes, block); end

  def define(name, options = T.unsafe(nil), &block); end
  def mapper_classes; end
  def register(relation, mappers); end
  def registry; end
end

class ROM::ConfigurationDSL::Relation
  class << self
    def build_class(name, options = T.unsafe(nil)); end
  end
end

class ROM::ConfigurationPlugin < ::ROM::PluginBase
  def apply_to(configuration, options = T.unsafe(nil)); end
end

class ROM::ConfigurationPluginRegistry < ::ROM::PluginRegistryBase
  def fetch(name); end
  def register(name, mod, options); end
end

module ROM::ConfigurationPlugins; end

module ROM::ConfigurationPlugins::ConfigurationDSL
  class << self
    def apply(configuration, options = T.unsafe(nil)); end
  end
end

class ROM::Container
  include ::Dry::Core::Equalizer::Methods
  extend ::Dry::Core::Deprecations::Interface

  def initialize(gateways, relations, mappers, commands); end

  def command(options = T.unsafe(nil)); end
  def commands; end
  def disconnect; end
  def gateways; end
  def mappers; end
  def relation(name, &block); end
  def relations; end
end

class ROM::CreateContainer
  def initialize(environment, setup); end

  def container; end

  private

  def finalize(environment, setup); end
end

class ROM::DuplicateConfigurationError < ::StandardError; end
class ROM::DuplicateContainerError < ::StandardError; end
ROM::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
ROM::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
ROM::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
ROM::EMPTY_SET = T.let(T.unsafe(nil), Set)
ROM::EMPTY_STRING = T.let(T.unsafe(nil), String)
class ROM::EnvAlreadyFinalizedError < ::StandardError; end

class ROM::Environment
  include ::ROM::Configurable

  def initialize(*args); end

  def gateways; end
  def gateways_map; end

  private

  def configure_gateways(*args); end
  def load_config(config, hash); end
  def normalize_gateway_args(*args); end
  def normalize_gateways(gateways_config); end
end

class ROM::Finalize
  def initialize(options); end

  def adapter_for(gateway); end
  def command_classes; end
  def config; end
  def datasets; end
  def gateway_map; end
  def gateways; end
  def mapper_classes; end
  def mapper_objects; end
  def plugins; end
  def relation_classes; end
  def repo_adapter; end
  def run!; end

  private

  def infer_relation?(gateway, name); end
  def infer_relations; end
  def inferrable_relations(gateway); end
  def initialize_datasets; end
  def load_commands(relations); end
  def load_mappers; end
  def load_relations(mappers); end
end

class ROM::Finalize::FinalizeCommands
  def initialize(relations, gateways, command_classes); end

  def run!; end
end

class ROM::Finalize::FinalizeMappers
  def initialize(mapper_classes, mapper_objects); end

  def run!; end
end

class ROM::Finalize::FinalizeRelations
  def initialize(gateways, relation_classes, mappers: T.unsafe(nil), plugins: T.unsafe(nil)); end

  def build_relation(klass, registry); end
  def plugin_options; end
  def run!; end
end

class ROM::Gateway
  extend ::Dry::Core::Constants
  extend ::Dry::Core::ClassAttributes

  def adapter; end
  def connection; end
  def disconnect; end
  def extend_command_class(klass, _dataset); end
  def logger; end
  def schema; end
  def transaction(opts = T.unsafe(nil), &block); end
  def use_logger(*_arg0); end

  private

  def transaction_runner(_); end

  class << self
    def class_from_symbol(type); end
    def setup(gateway_or_scheme, *args); end
  end
end

module ROM::Global
  def adapters; end
  def plugin_registry; end
  def plugins(*args, &block); end
  def register_adapter(identifier, adapter); end

  class << self
    def extended(rom); end
  end
end

class ROM::Global::PluginDSL
  def initialize(registry, defaults = T.unsafe(nil), &block); end

  def adapter(type, &block); end
  def defaults; end
  def register(name, mod, options = T.unsafe(nil)); end
  def registry; end
end

ROM::IDENTITY = T.let(T.unsafe(nil), Proc)

module ROM::Initializer
  class << self
    def extended(base); end
  end
end

module ROM::Initializer::InstanceMethods
  def options; end
end

class ROM::InlineCreateContainer < ::ROM::CreateContainer
  def initialize(*args, &block); end
end

class ROM::InternalPluginRegistry
  def initialize; end

  def [](name, adapter_name = T.unsafe(nil)); end
  def adapter(name); end
  def fetch(name, adapter_name = T.unsafe(nil)); end
  def registries; end
end

class ROM::InvalidOptionKeyError < ::StandardError; end
class ROM::InvalidOptionValueError < ::StandardError; end
class ROM::KeyMissing < ::ROM::CommandError; end
class ROM::MapperMisconfiguredError < ::StandardError; end
class ROM::MapperMissingError < ::StandardError; end

class ROM::MapperRegistry < ::ROM::Registry
  def [](name); end
  def []=(name, mapper); end
  def by_path(path); end
  def key?(name); end

  private

  def paths(path); end
end

class ROM::MissingAdapterIdentifierError < ::StandardError; end

class ROM::MissingSchemaClassError < ::StandardError
  def initialize(klass); end
end

class ROM::NoRelationError < ::StandardError; end

module ROM::Pipeline
  include ::ROM::Pipeline::Operator

  def as(*names); end
  def map_with(*names); end
end

class ROM::Pipeline::Composite
  include ::Dry::Core::Equalizer::Methods
  include ::ROM::Pipeline::Proxy

  def initialize(left, right); end

  def >>(other); end
  def left; end
  def right; end
end

module ROM::Pipeline::Operator
  def >>(other); end

  private

  def composite_class; end
end

module ROM::Pipeline::Proxy
  private

  def decorate?(response); end
  def method_missing(name, *args, &block); end
  def respond_to_missing?(name, include_private = T.unsafe(nil)); end
end

class ROM::Plugin < ::ROM::PluginBase
  include ::ROM::Configurable

  def apply_to(klass); end
end

class ROM::PluginBase
  def initialize(mod, options); end

  def apply_to(_base); end
  def mod; end
  def options; end
  def relation?; end
  def type; end
end

class ROM::PluginRegistry
  def initialize; end

  def commands; end
  def configuration; end
  def mappers; end
  def register(name, mod, options = T.unsafe(nil)); end
  def relations; end

  private

  def plugins_for(type, adapter); end
end

class ROM::PluginRegistryBase < ::ROM::Registry
  def [](name); end
end

module ROM::Plugins; end
module ROM::Plugins::Command; end

module ROM::Plugins::Command::Schema
  mixes_in_class_methods ::ROM::Plugins::Command::Schema::ClassInterface

  class << self
    def included(klass); end
  end
end

module ROM::Plugins::Command::Schema::ClassInterface
  def build(relation, options = T.unsafe(nil)); end
end

module ROM::Plugins::Relation; end
ROM::Plugins::Relation::EMPTY_REGISTRY = T.let(T.unsafe(nil), ROM::RelationRegistry)

module ROM::Plugins::Relation::Instrumentation
  extend ::Dry::Core::Constants
  extend ::Dry::Core::ClassAttributes

  mixes_in_class_methods ::ROM::Plugins::Relation::Instrumentation::ClassInterface

  def instrument(&block); end

  private

  def notification_payload(relation); end

  class << self
    def included(klass); end
  end
end

module ROM::Plugins::Relation::Instrumentation::ClassInterface
  def instrument(*methods); end
end

module ROM::Plugins::Relation::KeyInference
  def base_name; end
  def foreign_key(other = T.unsafe(nil)); end
end

module ROM::Plugins::Relation::RegistryReader
  private

  def method_missing(name, *_arg1); end
  def respond_to_missing?(name, _include_private = T.unsafe(nil)); end

  class << self
    def included(klass); end
  end
end

class ROM::Registry
  include ::Enumerable
  include ::Dry::Core::Equalizer::Methods

  def initialize(elements = T.unsafe(nil), name = T.unsafe(nil)); end

  def [](key); end
  def each(&block); end
  def elements; end
  def fetch(key); end
  def key?(name); end
  def name; end

  private

  def method_missing(name, *_arg1); end
  def respond_to_missing?(name, include_private = T.unsafe(nil)); end
end

class ROM::Registry::ElementNotFoundError < ::KeyError
  def initialize(key, name); end
end

class ROM::Relation
  extend ::Dry::Core::ClassAttributes
  include ::ROM::Initializer::InstanceMethods
  include ::Dry::Core::Equalizer::Methods
  include ::ROM::Relation::Materializable
  include ::ROM::Pipeline::Operator
  include ::ROM::Pipeline
  extend ::ROM::Initializer
  extend ::Dry::Initializer
  extend ::Dry::Core::Constants
  extend ::ROM::Relation::ClassInterface
  extend ::Dry::Core::Deprecations::Interface
  include ::Dry::Initializer::InstanceDSL

  def [](name); end
  def associations; end
  def call; end
  def combine(*args, &block); end
  def curried?; end
  def each(&block); end
  def graph(*others); end
  def graph?; end
  def new(dataset, new_opts = T.unsafe(nil)); end
  def schema?; end
  def schemas; end
  def to_a; end
  def with(new_options); end

  private

  def composite_class; end
end

module ROM::Relation::ClassInterface
  include ::Dry::Core::Constants
  extend ::Dry::Core::Deprecations::Interface

  def [](adapter); end
  def curried; end
  def default_name; end
  def default_schema(relation); end
  def finalize(registry, relation); end
  def forward(*methods); end
  def inherited(klass); end
  def schema(dataset = T.unsafe(nil), as: T.unsafe(nil), infer: T.unsafe(nil), &block); end
  def schemas; end
  def use(plugin, _options = T.unsafe(nil)); end
  def view(*args, &block); end
  def view_methods; end
end

ROM::Relation::ClassInterface::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
ROM::Relation::ClassInterface::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
ROM::Relation::ClassInterface::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
ROM::Relation::ClassInterface::EMPTY_SET = T.let(T.unsafe(nil), Set)
ROM::Relation::ClassInterface::EMPTY_STRING = T.let(T.unsafe(nil), String)
ROM::Relation::ClassInterface::IDENTITY = T.let(T.unsafe(nil), Proc)
ROM::Relation::ClassInterface::Self = T.let(T.unsafe(nil), Proc)
ROM::Relation::ClassInterface::Undefined = T.let(T.unsafe(nil), Object)

class ROM::Relation::Composite < ::ROM::Pipeline::Composite
  include ::ROM::Relation::Materializable

  def [](*args); end
  def call(*args); end

  private

  def decorate?(response); end
end

class ROM::Relation::Curried
  include ::Dry::Initializer::InstanceDSL
  include ::ROM::Initializer::InstanceMethods
  include ::ROM::Relation::Materializable
  include ::ROM::Pipeline::Operator
  include ::ROM::Pipeline
  extend ::ROM::Initializer
  extend ::Dry::Initializer

  def [](*args); end
  def call(*args); end
  def curried?; end
  def name; end
  def to_a; end
  def to_ary; end

  private

  def __new__(relation, new_opts = T.unsafe(nil)); end
  def composite_class; end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(name, include_private = T.unsafe(nil)); end
end

class ROM::Relation::Graph
  include ::ROM::Relation::Materializable
  include ::ROM::Pipeline::Operator
  include ::ROM::Pipeline
  include ::ROM::Pipeline::Proxy
  extend ::Dry::Core::Deprecations::Interface

  def initialize(root, nodes); end

  def call(*args); end
  def combine(*args, &block); end
  def graph(*others); end
  def graph?; end
  def left; end
  def nodes; end
  def right; end
  def root; end
  def with_nodes(nodes); end

  private

  def composite_class; end
  def decorate?(other); end

  class << self
    def build(root, nodes); end
  end
end

class ROM::Relation::Loaded
  include ::Enumerable

  def initialize(source, collection = T.unsafe(nil)); end

  def collection; end
  def each(&block); end
  def empty?; end
  def new(collection); end
  def one; end
  def one!; end
  def pluck(key); end
  def primary_keys; end
  def source; end
  def to_ary(*_arg0); end
end

module ROM::Relation::Materializable
  def call(*_arg0); end
  def each(&block); end
  def first; end
  def one; end
  def one!; end
  def to_a; end
  def to_ary; end
end

ROM::Relation::NOOP_OUTPUT_SCHEMA = T.let(T.unsafe(nil), Proc)

class ROM::Relation::Name
  include ::Dry::Core::Equalizer::Methods

  def initialize(relation, dataset = T.unsafe(nil)); end

  def dataset; end
  def inspect; end
  def relation; end
  def to_s; end
  def to_sym; end
  def with(relation); end

  class << self
    def [](*args); end
    def cache; end
  end
end

class ROM::Relation::ViewDSL
  def initialize(name, schema, &block); end

  def call; end
  def name; end
  def new_schema; end
  def relation(&block); end
  def relation_block; end
  def schema(&block); end
end

class ROM::RelationAlreadyDefinedError < ::StandardError; end

class ROM::RelationRegistry < ::ROM::Registry
  def initialize(elements = T.unsafe(nil), name = T.unsafe(nil)); end
end

class ROM::Schema
  include ::Dry::Core::Equalizer::Methods
  include ::Enumerable

  def initialize(name, options); end

  def +(other); end
  def [](key, src = T.unsafe(nil)); end
  def append(*new_attributes); end
  def associations; end
  def attributes; end
  def call(relation); end
  def each(&block); end
  def empty?; end
  def exclude(*names); end
  def finalize!(gateway: T.unsafe(nil), relations: T.unsafe(nil), &block); end
  def foreign_key(relation); end
  def inferrer; end
  def key?(name); end
  def merge(other); end
  def name; end
  def options; end
  def prefix(prefix); end
  def primary_key; end
  def project(*names); end
  def relations; end
  def rename(mapping); end
  def to_ary; end
  def to_h; end
  def to_input_hash; end
  def to_output_hash; end
  def uniq(&block); end
  def with(new_options); end
  def wrap(prefix = T.unsafe(nil)); end

  private

  def attr_class; end
  def count_index; end
  def name_index; end
  def new(attributes); end
  def source_index; end

  class << self
    def attributes(attributes, attr_class); end
    def define(name, attr_class: T.unsafe(nil), attributes: T.unsafe(nil), associations: T.unsafe(nil), inferrer: T.unsafe(nil)); end
  end
end

class ROM::Schema::Attribute
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Initializer::InstanceDSL
  include ::ROM::Initializer::InstanceMethods
  extend ::ROM::Initializer
  extend ::Dry::Initializer

  def [](input); end
  def alias; end
  def aliased(name); end
  def aliased?; end
  def as(name); end
  def eql?(other); end
  def foreign_key?; end
  def inspect; end
  def key; end
  def meta(opts = T.unsafe(nil)); end
  def name; end
  def prefixed(prefix = T.unsafe(nil)); end
  def pretty_inspect; end
  def primary_key?; end
  def read?; end
  def source; end
  def target; end
  def to_read_type; end
  def wrapped(name = T.unsafe(nil)); end
  def wrapped?; end

  private

  def method_missing(meth, *args, &block); end
  def respond_to_missing?(name, include_private = T.unsafe(nil)); end
end

class ROM::Schema::AttributeAlreadyDefinedError < ::StandardError; end
ROM::Schema::DEFAULT_INFERRER = T.let(T.unsafe(nil), Proc)

class ROM::Schema::DSL < ::BasicObject
  def initialize(relation, schema_class: T.unsafe(nil), inferrer: T.unsafe(nil), &block); end

  def attribute(name, type, options = T.unsafe(nil)); end
  def attributes; end
  def call; end
  def inferrer; end
  def primary_key(*names); end
  def relation; end
  def schema_class; end
end

ROM::Schema::EMPTY_ASSOCIATION_SET = T.let(T.unsafe(nil), ROM::AssociationSet)

class ROM::Schema::MissingAttributesError < ::StandardError
  def initialize(name, attributes); end
end

ROM::Self = T.let(T.unsafe(nil), Proc)

class ROM::Setup
  def initialize; end

  def auto_registration(directory, options = T.unsafe(nil)); end
  def command_classes; end
  def mapper_classes; end
  def plugins; end
  def register_command(*klasses); end
  def register_mapper(*klasses); end
  def register_plugin(plugin); end
  def register_relation(*klasses); end
  def relation_classes; end
end

class ROM::Transaction
  def rollback!; end
  def run(opts = T.unsafe(nil)); end
end

ROM::Transaction::NoOp = T.let(T.unsafe(nil), ROM::Transaction)
class ROM::Transaction::Rollback < ::StandardError; end
class ROM::TupleCountMismatchError < ::ROM::CommandError; end

module ROM::Types
  mixes_in_class_methods ::ROM::Types::Methods

  class << self
    def Constructor(primitive, &block); end
    def Definition(primitive); end
    def included(other); end
  end
end

module ROM::Types::Methods
  def ForeignKey(relation, type = T.unsafe(nil)); end
end

ROM::Undefined = T.let(T.unsafe(nil), Object)
class ROM::UnknownPluginError < ::StandardError; end
class ROM::UnsupportedRelationError < ::StandardError; end
ROM::VERSION = T.let(T.unsafe(nil), String)