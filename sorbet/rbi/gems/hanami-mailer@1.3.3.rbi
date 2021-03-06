# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `hanami-mailer` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Hanami
  class << self
    def app; end
    def app?(app); end
    def boot; end
    def code_reloading?; end
    def configuration; end
    def configure(&blk); end
    def env; end
    def env?(*names); end
    def environment; end
    def logger; end
    def plugin(&blk); end
    def plugins; end
    def public_directory; end
    def root; end
  end
end

Hanami::DEFAULT_PUBLIC_DIRECTORY = T.let(T.unsafe(nil), String)

module Hanami::Mailer
  include ::Hanami::Utils::ClassAttribute
  extend ::Hanami::Utils::ClassAttribute::ClassMethods
  include ::Hanami::Utils::ClassAttribute

  mixes_in_class_methods ::Hanami::Mailer::ClassMethods

  def initialize(locals = T.unsafe(nil)); end

  def deliver; end
  def render(format); end

  protected

  def charset; end
  def mail; end
  def method_missing(method_name); end
  def prepare; end

  private

  def __dsl(method_name); end
  def __part(format); end
  def __part?(format); end
  def build; end
  def respond_to_missing?(method_name, _include_all); end

  class << self
    def configuration; end
    def configuration=(_arg0); end
    def configure(&blk); end
    def deliveries; end
    def included(base); end
    def load!; end
  end
end

Hanami::Mailer::CONTENT_TYPES = T.let(T.unsafe(nil), Hash)

module Hanami::Mailer::ClassMethods
  def deliver(locals = T.unsafe(nil)); end
end

class Hanami::Mailer::Configuration
  include ::Hanami::Mailer::Glue

  def initialize; end

  def add_mailer(mailer); end
  def copy!(base); end
  def default_charset(value = T.unsafe(nil)); end
  def delivery(method = T.unsafe(nil), options = T.unsafe(nil)); end
  def delivery_method(method = T.unsafe(nil), options = T.unsafe(nil)); end
  def duplicate; end
  def load!; end
  def mailers; end
  def modules; end
  def namespace(value = T.unsafe(nil)); end
  def prepare(&blk); end
  def reset!; end
  def root(value = T.unsafe(nil)); end
  def unload!; end

  protected

  def default_charset=(_arg0); end
  def delivery_method=(_arg0); end
  def modules=(_arg0); end
  def namespace=(_arg0); end
  def root=(_arg0); end
end

Hanami::Mailer::Configuration::DEFAULT_CHARSET = T.let(T.unsafe(nil), String)
Hanami::Mailer::Configuration::DEFAULT_DELIVERY_METHOD = T.let(T.unsafe(nil), Symbol)
Hanami::Mailer::Configuration::DEFAULT_ROOT = T.let(T.unsafe(nil), String)

module Hanami::Mailer::Dsl
  def bcc(value = T.unsafe(nil)); end
  def cc(value = T.unsafe(nil)); end
  def from(value = T.unsafe(nil)); end
  def reply_to(value = T.unsafe(nil)); end
  def return_path(value = T.unsafe(nil)); end
  def subject(value = T.unsafe(nil)); end
  def template(value = T.unsafe(nil)); end
  def templates(format = T.unsafe(nil)); end
  def to(value = T.unsafe(nil)); end

  protected

  def load!; end

  class << self
    def extended(base); end
  end
end

class Hanami::Mailer::Error < ::StandardError; end

class Hanami::Mailer::MissingDeliveryDataError < ::Hanami::Mailer::Error
  def initialize; end
end

module Hanami::Mailer::Rendering; end

class Hanami::Mailer::Rendering::TemplateName
  def initialize(name, namespace); end

  def to_s; end

  private

  def compile!(namespace); end
  def replace!(token); end
  def tokens(namespace); end
end

Hanami::Mailer::Rendering::TemplateName::NAMESPACE_SEPARATOR = T.let(T.unsafe(nil), String)

class Hanami::Mailer::Rendering::TemplatesFinder
  def initialize(mailer); end

  def find; end

  protected

  def _find(lookup = T.unsafe(nil)); end
  def engines; end
  def format; end
  def recursive; end
  def root; end
  def search_path; end
  def separator; end
  def template_name; end
end

Hanami::Mailer::Rendering::TemplatesFinder::ENGINES = T.let(T.unsafe(nil), String)
Hanami::Mailer::Rendering::TemplatesFinder::FORMAT = T.let(T.unsafe(nil), String)
Hanami::Mailer::Rendering::TemplatesFinder::RECURSIVE = T.let(T.unsafe(nil), String)

class Hanami::Mailer::Template
  def initialize(template, encoding = T.unsafe(nil)); end

  def file; end
  def render(scope = T.unsafe(nil), locals = T.unsafe(nil)); end
end

Hanami::Mailer::VERSION = T.let(T.unsafe(nil), String)
Hanami::VERSION = T.let(T.unsafe(nil), String)
