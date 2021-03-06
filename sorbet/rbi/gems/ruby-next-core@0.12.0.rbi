# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ruby-next-core` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class NoMatchingPatternError < ::RuntimeError; end

module RubyNext
  class << self
    def current_ruby_version; end
    def debug_enabled; end
    def debug_enabled=(val); end
    def debug_source(source, filepath = T.unsafe(nil)); end
    def next_ruby_version(version = T.unsafe(nil)); end
    def silence_warnings; end
    def silence_warnings=(_arg0); end
    def warn(msg); end

    private

    def debug_filter; end
  end
end

module RubyNext::Core
  class << self
    def backports?; end
    def core_ext?; end
    def inject!(contents); end
    def patch(*_arg0, &_arg1); end
    def patches; end
    def refine?; end
    def strategy; end
    def strategy=(val); end
  end
end

class RubyNext::Core::Patch
  def initialize(mod = T.unsafe(nil), method:, version:, name: T.unsafe(nil), supported: T.unsafe(nil), native: T.unsafe(nil), location: T.unsafe(nil), refineable: T.unsafe(nil), core_ext: T.unsafe(nil), singleton: T.unsafe(nil)); end

  def body; end
  def core_ext; end
  def core_ext?; end
  def location; end
  def method_name; end
  def mod; end
  def name; end
  def native; end
  def native?; end
  def prepend?; end
  def refineables; end
  def singleton; end
  def singleton?; end
  def supported; end
  def supported?; end
  def to_module; end
  def version; end

  private

  def build_location(trace_locations); end
  def build_module_name; end
  def native_location?(location); end
end

class RubyNext::Core::Patches
  def initialize; end

  def <<(patch); end
  def extensions; end
  def refined; end
end

RubyNext::LAST_MINOR_VERSIONS = T.let(T.unsafe(nil), Hash)
RubyNext::LATEST_VERSION = T.let(T.unsafe(nil), Array)

module RubyNext::Language
  class << self
    def runtime?; end
    def setup_gem_load_path(lib_dir = T.unsafe(nil), rbnext_dir: T.unsafe(nil), transpile: T.unsafe(nil)); end
  end
end

module RubyNext::Language::GemTranspiler
  class << self
    def maybe_transpile(root_dir, lib_dir, target_dir); end
  end
end

RubyNext::MIN_SUPPORTED_VERSION = T.let(T.unsafe(nil), Gem::Version)
RubyNext::NEXT_VERSION = T.let(T.unsafe(nil), String)
RubyNext::RUBY_NEXT_DIR = T.let(T.unsafe(nil), String)

module RubyNext::Utils
  private

  def refine_modules?; end
  def resolve_feature_path(feature); end
  def source_with_lines(source, path); end

  class << self
    def refine_modules?; end
    def resolve_feature_path(feature); end
    def source_with_lines(source, path); end
  end
end

RubyNext::VERSION = T.let(T.unsafe(nil), String)
