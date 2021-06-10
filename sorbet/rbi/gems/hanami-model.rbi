# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/hanami-model/all/hanami-model.rbi
#
# hanami-model-1.3.3

module Hanami
end
module Hanami::Model
  def self.config; end
  def self.configuration; end
  def self.configure(&block); end
  def self.container; end
  def self.disconnect; end
  def self.load!(&blk); end
  def self.loaded; end
  def self.loaded?; end
  def self.migration(&blk); end
  def self.repositories; end
end
module Hanami::Model::Types
  def self.included(mod); end
  extend ROM::Types::Methods
  include ROM::Types
end
module Hanami::Model::Types::ClassMethods
  def Collection(type); end
  def Entity(type); end
end
module Hanami::Model::Types::Schema
end
class Hanami::Model::Types::Schema::CoercibleType < Dry::Types::Definition
  def call(value); end
  def coerce(value); end
  def object; end
  def valid?(value); end
end
class Hanami::Entity
  def ==(other); end
  def attribute?(name); end
  def attributes; end
  def freeze; end
  def hash; end
  def id; end
  def initialize(attributes = nil); end
  def method_missing(method_name, *arg1); end
  def respond_to_missing?(name, _include_all); end
  def self.inherited(klass); end
  def to_h; end
  def to_hash; end
end
class Hanami::Entity::Schema
  def [](attributes); end
  def attribute?(name); end
  def call(attributes); end
  def initialize(type = nil, &blk); end
  def schema; end
end
class Hanami::Entity::Schema::Schemaless
  def attribute?(_name); end
  def call(attributes); end
  def initialize; end
end
class Hanami::Entity::Schema::Definition
  def attribute?(name); end
  def attributes; end
  def call(attributes); end
  def initialize(type = nil, &blk); end
  def schema; end
end
class Hanami::Entity::Schema::Definition::Dsl
  def attribute(name, type); end
  def initialize(&blk); end
  def self.build(type, &blk); end
  def to_h; end
end
module Hanami::Entity::Types
  extend Hanami::Model::Types::ClassMethods
  include Hanami::Model::Types
end
module Hanami::Entity::ClassMethods
  def attributes(type = nil, &blk); end
  def schema; end
  def schema=(value); end
end
class Hanami::Model::EntityName
  def initialize(name); end
  def to_s; end
  def underscore; end
end
class Hanami::Model::RelationName < Hanami::Model::EntityName
  def self.new(name); end
end
class Hanami::Model::MappedRelation < SimpleDelegator
  def [](attribute); end
  def initialize(relation); end
  def self.mapper_name; end
end
module Hanami::Model::Associations
end
class Hanami::Model::Associations::Dsl
  def belongs_to(relation, *arg1); end
  def has_many(relation, **args); end
  def has_one(relation, *arg1); end
  def initialize(repository, &blk); end
end
class Hanami::Model::Associations::BelongsTo
  def _build_scope; end
  def association; end
  def association_keys; end
  def container; end
  def foreign_key; end
  def initialize(repository, source, target, subject, scope = nil); end
  def one; end
  def primary_key; end
  def relation(name); end
  def repository; end
  def scope; end
  def self.schema_type(entity); end
  def source; end
  def subject; end
  def target; end
end
class Hanami::Model::Associations::HasMany
  def __new__(new_scope); end
  def _build_scope; end
  def add(data); end
  def aggregate(name); end
  def associate(data); end
  def association(name); end
  def association_keys; end
  def command(target, relation, options = nil); end
  def container; end
  def count; end
  def create(data); end
  def delete; end
  def each(&blk); end
  def entity; end
  def foreign_key; end
  def initialize(repository, source, target, subject, scope = nil); end
  def map(&blk); end
  def primary_key; end
  def relation(name); end
  def remove(id); end
  def repository; end
  def scope; end
  def self.schema_type(entity); end
  def serialize(data); end
  def source; end
  def subject; end
  def target; end
  def target_association; end
  def to_a; end
  def unassociate; end
  def where(condition); end
end
class Hanami::Model::Associations::HasOne
  def _build_scope; end
  def add(data); end
  def aggregate(name); end
  def associate(data); end
  def association_keys; end
  def command(target, relation, options = nil); end
  def container; end
  def create(data); end
  def delete; end
  def entity; end
  def foreign_key; end
  def initialize(repository, source, target, subject, scope = nil); end
  def one; end
  def primary_key; end
  def relation(name); end
  def remove; end
  def replace(data); end
  def repository; end
  def scope; end
  def self.schema_type(entity); end
  def serialize(data); end
  def source; end
  def subject; end
  def target; end
  def update(data); end
end
class Hanami::Model::Associations::ManyToMany
  def __new__(new_scope); end
  def _build_scope; end
  def add(*data); end
  def associate(data); end
  def association; end
  def association_keys; end
  def command(target, relation, options = nil); end
  def container; end
  def count; end
  def delete; end
  def each(&blk); end
  def initialize(repository, source, target, subject, scope = nil); end
  def map(&blk); end
  def relation(name); end
  def remove(target_id); end
  def repository; end
  def scope; end
  def self.schema_type(entity); end
  def serialize(data); end
  def source; end
  def source_foreign_key; end
  def source_primary_key; end
  def subject; end
  def target; end
  def target_foreign_key; end
  def target_primary_key; end
  def through; end
  def to_a; end
  def where(condition); end
end
class Hanami::Model::Association
  def self.build(repository, target, subject); end
  def self.lookup(association); end
end
module Anonymous_Module_93
  def __coercers__; end
  def __defaults__; end
  def __initialize__(container, **__options__); end
  def auto_struct; end
  def container; end
  def struct_namespace; end
end
class Hanami::Repository < ROM::Repository::Root
  def all; end
  def assoc(target, subject = nil); end
  def clear; end
  def command(*args, **opts, &block); end
  def find(id); end
  def first; end
  def initialize; end
  def last; end
  def self.associations(&blk); end
  def self.configuration; end
  def self.container; end
  def self.define_associations; end
  def self.define_mapping; end
  def self.define_relation; end
  def self.inherited(klass); end
  def self.load!; end
  def self.mapping(&blk); end
  def self.schema(&blk); end
  include Anonymous_Module_93
end
module Hanami::Repository::Commands
  def create(*args); end
  def delete(*args); end
  def update(*args); end
end
class Hanami::Model::Error < StandardError
  def self.for(exception); end
  def self.mapping; end
  def self.register(external, internal); end
end
class Hanami::Model::DatabaseError < Hanami::Model::Error
end
class Hanami::Model::InvalidCommandError < Hanami::Model::Error
  def initialize(message = nil); end
end
class Hanami::Model::ConstraintViolationError < Hanami::Model::Error
  def initialize(message = nil); end
end
class Hanami::Model::UniqueConstraintViolationError < Hanami::Model::ConstraintViolationError
  def initialize(message = nil); end
end
class Hanami::Model::ForeignKeyConstraintViolationError < Hanami::Model::ConstraintViolationError
  def initialize(message = nil); end
end
class Hanami::Model::NotNullConstraintViolationError < Hanami::Model::ConstraintViolationError
  def initialize(message = nil); end
end
class Hanami::Model::CheckConstraintViolationError < Hanami::Model::ConstraintViolationError
  def initialize(message = nil); end
end
class Hanami::Model::UnknownDatabaseTypeError < Hanami::Model::Error
end
class Hanami::Model::MissingPrimaryKeyError < Hanami::Model::Error
end
class Hanami::Model::UnknownAttributeError < Hanami::Model::Error
end
class Hanami::Model::UnknownDatabaseAdapterError < Hanami::Model::Error
  def initialize(url); end
end
class Hanami::Model::Configuration
  def configure_gateway; end
  def connection; end
  def define_entities_mappings(container, repositories); end
  def define_mappings(root, &blk); end
  def entities; end
  def gateway; end
  def initialize(configurator); end
  def load!(repositories, &blk); end
  def logger; end
  def logger=(value); end
  def mappings; end
  def method_missing(method_name, *args, &blk); end
  def migrations; end
  def migrations_logger; end
  def register_entity(plural, singular, klass); end
  def respond_to_missing?(method_name, include_all); end
  def rom; end
  def root; end
  def schema; end
  def url; end
end
class Hanami::Model::Configurator
  def _gateway; end
  def _logger; end
  def _migrations; end
  def _schema; end
  def adapter(backend, url); end
  def backend; end
  def directory; end
  def gateway(&blk); end
  def logger(stream, options = nil); end
  def migrations(path); end
  def migrations_logger(stream = nil); end
  def path(path); end
  def schema(path); end
  def self.build(&block); end
  def url; end
end
class Hanami::Model::Mapping
  def attribute(name, options); end
  def initialize(&blk); end
  def model(entity); end
  def process(input); end
  def register_as(name); end
  def reverse?; end
  def t(name, *args); end
  def translate(attribute); end
  extend Transproc::Registry
end
module Hanami::Model::Plugins
end
module Hanami::Model::Plugins::Mapping
  def self.included(klass); end
end
class Hanami::Model::Plugins::Mapping::InputWithMapping < Hanami::Model::Plugins::WrappingInput
  def [](value); end
  def initialize(relation, input); end
end
module Hanami::Model::Plugins::Mapping::ClassMethods
  def build(relation, options = nil); end
end
module Hanami::Model::Plugins::Schema
  def self.included(klass); end
end
class Hanami::Model::Plugins::Schema::InputWithSchema < Hanami::Model::Plugins::WrappingInput
  def [](value); end
  def initialize(relation, input); end
end
module Hanami::Model::Plugins::Schema::ClassMethods
  def build(relation, options = nil); end
end
module Hanami::Model::Plugins::Timestamps
  def self.included(klass); end
end
class Hanami::Model::Plugins::Timestamps::InputWithTimestamp < Hanami::Model::Plugins::WrappingInput
  def [](value); end
  def _touch(_value); end
  def initialize(relation, input); end
  def timestamps?; end
end
class Hanami::Model::Plugins::Timestamps::InputWithUpdateTimestamp < Hanami::Model::Plugins::Timestamps::InputWithTimestamp
  def _touch(value, now); end
end
class Hanami::Model::Plugins::Timestamps::InputWithCreateTimestamp < Hanami::Model::Plugins::Timestamps::InputWithUpdateTimestamp
  def _touch(value, now); end
end
module Hanami::Model::Plugins::Timestamps::ClassMethods
  def build(relation, options = nil); end
end
class Hanami::Model::Plugins::WrappingInput
  def initialize(_relation, input); end
end
class Hanami::Model::Migrator
end
class Hanami::Model::Migrator::Logger < Hanami::Logger
  def initialize(stream); end
end
class Hanami::Model::Migrator::Logger::Formatter < Hanami::Logger::Formatter
  def _format(hash); end
  def self.subclasses; end
  def self.subclasses=(arg0); end
end
class Hanami::Model::Migration
  def gateway; end
  def initialize(gateway, &block); end
  def migration; end
  def run(direction = nil); end
end
module Hanami::Model::Sql
  def self.asc(column); end
  def self.desc(column); end
  def self.function(name); end
  def self.literal(string); end
end
module Hanami::Model::Sql::Types
  include Anonymous_Module_94
end
module Hanami::Model::Sql::Types::Schema
  def self.coercible(attribute); end
  def self.pg_json?(pristine); end
  def self.pg_json_pristines; end
end
module Hanami::Model::Sql::Types::Schema::Coercions
  def self.array(arg); end
  def self.date(arg); end
  def self.datetime(arg); end
  def self.decimal(arg); end
  def self.float(arg); end
  def self.hash(arg); end
  def self.int(arg); end
  def self.pg_json(arg); end
  def self.time(arg); end
end
module Anonymous_Module_94
end
class Hanami::Model::Sql::Types::Schema::AssociationType < Hanami::Model::Types::Schema::CoercibleType
  def success(*args); end
  def valid?(value); end
end
module Hanami::Model::Sql::Entity
end
class Hanami::Model::Sql::Entity::Schema < Hanami::Entity::Schema
  def [](attributes); end
  def attribute?(name); end
  def attributes; end
  def build(registry, relation, mapping); end
  def build_associations(registry, associations); end
  def build_attributes(relation, mapping); end
  def call(attributes); end
  def coercible(type); end
  def initialize(registry, relation, mapping); end
end
