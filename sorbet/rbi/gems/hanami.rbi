# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/hanami/all/hanami.rbi
#
# hanami-1.3.4

module Hanami
  def self.app; end
  def self.app?(app); end
  def self.boot; end
  def self.code_reloading?; end
  def self.configuration; end
  def self.configure(&blk); end
  def self.env; end
  def self.env?(*names); end
  def self.environment; end
  def self.logger; end
  def self.plugin(&blk); end
  def self.plugins; end
  def self.public_directory; end
  def self.root; end
end
module Hanami::Version
  def self.gem_requirement; end
  def self.major_minor; end
  def self.prerelease?; end
  def self.version; end
end
module Hanami::Action
end
class Hanami::Action::InvalidCSRFTokenError < StandardError
end
module Hanami::Action::CSRFProtection
  def generate_csrf_token; end
  def handle_invalid_csrf_token; end
  def invalid_csrf_token?; end
  def missing_csrf_token?; end
  def self.included(action); end
  def set_csrf_token; end
  def verify_csrf_token; end
  def verify_csrf_token?; end
end
module Hanami::Mailer
end
module Hanami::Mailer::Glue
  def self.included(configuration); end
end
class Hanami::Mailer::Configuration
  def delivery(method = nil, options = nil); end
  include Hanami::Mailer::Glue
end
module Mailers
end
class Hanami::Env
  def [](key); end
  def []=(key, value); end
  def initialize(env: nil); end
  def load!(path); end
end
class Hanami::Hanamirc
  def default_options; end
  def exists?; end
  def file_options; end
  def initialize(root); end
  def options; end
  def parse_file(path); end
  def path_file; end
  def project_name; end
  def symbolize(hash); end
end
module Hanami::Components
  def self.[](name); end
  def self.component(name); end
  def self.register(name, &blk); end
  def self.release; end
  def self.resolve(*names); end
  def self.resolved(name, value = nil, &blk); end
end
class Hanami::Components::Component
  def _prepare; end
  def _prepare=(arg0); end
  def _resolve; end
  def _resolve=(arg0); end
  def _run; end
  def _run=(arg0); end
  def call(configuration); end
  def component(name); end
  def initialize(name, &blk); end
  def logger_interface?(instance); end
  def name; end
  def prepare(&blk); end
  def requirements; end
  def requirements=(names); end
  def requires(*components); end
  def resolve(&blk); end
  def resolve_requirements; end
  def resolved(name, value = nil, &blk); end
  def run(&blk); end
end
class Hanami::Environment
  def apps_path; end
  def bundler_groups; end
  def code_reloading?; end
  def config; end
  def default_host; end
  def default_port?; end
  def dotenv_applicable?(file); end
  def env; end
  def env_config; end
  def environment; end
  def environment?(*names); end
  def host; end
  def initialize(options = nil); end
  def port; end
  def project_environment_configuration; end
  def project_name; end
  def rack_env; end
  def rackup; end
  def require_application_environment; end
  def require_project_environment; end
  def root; end
  def serve_static_assets?; end
  def set_application_env_vars!; end
  def set_env_vars!; end
  def set_hanami_env_vars!; end
  def static_assets_middleware; end
  def to_options; end
end
class Hanami::CommonLogger < Rack::CommonLogger
  def extract_params(env); end
  def log(env, status, header, began_at); end
end
class Hanami::CommonLogger::ElapsedTime
  def self.call; end
end
class Hanami::App
  def app; end
  def builder; end
  def call(env); end
  def initialize(configuration, environment); end
  def middleware(configuration, environment); end
  def mount(configuration); end
  def routes; end
end
class Hanami::ApplicationName
  def ensure_validity!; end
  def initialize(name); end
  def sanitize(name); end
  def self.invalid?(name); end
  def to_env_s; end
  def to_s; end
  def to_str; end
end
class Hanami::ApplicationNamespace
  def self.resolve(name); end
end
class Hanami::MiddlewareStack
  def _load_default_welcome_page; end
  def _load_session_middleware; end
  def builder; end
  def call(env); end
  def configuration; end
  def initialize(configuration); end
  def load!; end
  def load_default_stack; end
  def load_middleware(middleware); end
  def prepend(middleware, *args, &blk); end
  def routes; end
  def stack; end
  def use(middleware, *args, &blk); end
end
module Hanami::Config
end
class Hanami::Config::Cookies
  def default_options; end
  def enabled?; end
  def initialize(configuration, options = nil); end
end
class Hanami::Config::FrameworkConfiguration < BasicObject
  def __add(&blk); end
  def __apply(configuration); end
  def initialize(&blk); end
  def method_missing(m, *args, &blk); end
end
class Hanami::Config::LoadPaths < Hanami::Utils::LoadPaths
  def initialize(root); end
  def load!; end
  def realpath(path); end
end
class Hanami::Config::Mapper
  def error_message; end
  def initialize(root, path, &blk); end
  def realpath; end
  def to_proc; end
end
class Hanami::Config::Routes < Hanami::Config::Mapper
  def error_message; end
end
class Hanami::Config::Security
  def content_security_policy(value = nil); end
  def x_content_type_options(value = nil); end
  def x_frame_options(value = nil); end
  def x_xss_protection(value = nil); end
end
class Hanami::Config::Sessions
  def default_options; end
  def domain; end
  def enabled?; end
  def initialize(adapter = nil, options = nil, configuration = nil); end
  def ip_address?(string); end
  def middleware; end
  def options; end
end
class Hanami::ApplicationConfiguration
  def adapter(*options); end
  def app_name; end
  def assets(&blk); end
  def body_parsers(*parsers); end
  def configurations; end
  def controller; end
  def controller_pattern(value = nil); end
  def cookies(options = nil); end
  def default_request_format(format = nil); end
  def default_response_format(format = nil); end
  def evaluate_configurations!; end
  def force_ssl(value = nil); end
  def handle_exceptions(value = nil); end
  def host(value = nil); end
  def initialize(namespace, configurations, path_prefix, env: nil); end
  def layout(value = nil); end
  def load_paths; end
  def middleware; end
  def model; end
  def namespace; end
  def path_prefix; end
  def port(value = nil); end
  def root(value = nil); end
  def routes(path = nil, &blk); end
  def scheme(value = nil); end
  def security; end
  def sessions(adapter = nil, options = nil); end
  def ssl?; end
  def templates(value = nil); end
  def view; end
  def view_pattern(value = nil); end
end
class Hanami::EnvironmentApplicationConfigurations
  def add(environment, &blk); end
  def configurations; end
  def each(environment, &blk); end
  def initialize; end
  def matching_env?(environment, env); end
end
module Hanami::Views
end
class Hanami::Views::DefaultTemplateFinder < Hanami::View::Rendering::TemplateFinder
  def initialize(view, root, template_name, format); end
  def root; end
end
class Hanami::Views::Default
  def self.autoescape_methods; end
  def self.autoescape_methods=(arg0); end
  def self.configuration; end
  def self.configuration=(arg0); end
  def self.render(root, template_name, context); end
  extend Hanami::Utils::ClassAttribute::ClassMethods
  extend Hanami::Utils::ClassAttribute::ClassMethods
  extend Hanami::View::Dsl
  extend Hanami::View::Escape
  extend Hanami::View::Inheritable
  extend Hanami::View::Rendering
  include Hanami::Utils::ClassAttribute
  include Hanami::Utils::ClassAttribute
  include Hanami::View
  include Hanami::View::Escape::InstanceMethods
  include Hanami::View::Rendering::InstanceMethods
end
class Hanami::Views::NullView
  def render(_context); end
end
class Hanami::RenderingPolicy
  def _render(env, response); end
  def _render_action(action, env, response); end
  def _render_status_page(action, response); end
  def initialize(configuration); end
  def render(env, response); end
  def render_status_page?(action, response); end
  def renderable?(env); end
  def view_for(action, response); end
end
class Hanami::Application
  def call(env); end
  def configuration; end
  def initialize; end
  def middleware; end
  def renderer; end
  def self.inherited(base); end
end
module Hanami::Application::ClassMethods
  def app_name; end
  def configuration=(configuration); end
  def configure(environment = nil, &blk); end
  def self.extended(base); end
end
class Hanami::Configuration
  def apps; end
  def early_hints(value = nil); end
  def environment(name); end
  def initialize(&blk); end
  def logger(*options); end
  def mailer(&blk); end
  def mailer_settings; end
  def middleware; end
  def model(&blk); end
  def mount(app, options); end
  def mounted; end
  def settings; end
end
class Hanami::Configuration::App < SimpleDelegator
  def host; end
  def initialize(app, options = nil); end
  def path_prefix; end
end
class Hanami::Configuration::Middleware
  def each(&blk); end
  def initialize; end
  def use(middleware, *args, &blk); end
end
module Hanami::Action::RoutingHelpers
  def self.included(base); end
end
module Hanami::Components::App
end
class Hanami::Components::App::Controller
  def self.resolve(app); end
end
class Hanami::Components::App::View
  def self.resolve(app); end
end
class Hanami::Components::App::Assets
  def self.resolve(app); end
end
class Hanami::Routes
  def initialize(routes); end
  def method_missing(m, *args); end
  def path(name, *args); end
  def recognize(env); end
  def url(name, *args); end
end
module Hanami::Routing
end
class Hanami::Routing::Default
  def call(env); end
end
class Hanami::Routing::Default::NullAction
  def call(env); end
  def params; end
  def self.after_callbacks; end
  def self.after_callbacks=(arg0); end
  def self.before_callbacks; end
  def self.before_callbacks=(arg0); end
  def self.configuration; end
  def self.configuration=(arg0); end
  extend Hanami::Action::Callbacks::ClassMethods
  extend Hanami::Action::Exposable::ClassMethods
  extend Hanami::Action::Mime::ClassMethods
  extend Hanami::Action::Rack::ClassMethods
  extend Hanami::Action::Throwable::ClassMethods
  extend Hanami::Action::Validatable::ClassMethods
  extend Hanami::Utils::ClassAttribute::ClassMethods
  extend Hanami::Utils::ClassAttribute::ClassMethods
  include Hanami::Action
  include Hanami::Action::Callbacks
  include Hanami::Action::Configurable
  include Hanami::Action::Exposable
  include Hanami::Action::Exposable::Guard
  include Hanami::Action::Glue
  include Hanami::Action::Head
  include Hanami::Action::Mime
  include Hanami::Action::Rack
  include Hanami::Action::Redirect
  include Hanami::Action::Throwable
  include Hanami::Action::Validatable
  include Hanami::Utils::ClassAttribute
  include Hanami::Utils::ClassAttribute
end
class Hanami::Components::App::Routes
  def self.application_routes(app); end
  def self.resolve(app); end
end
class Hanami::Welcome
  def application_class; end
  def application_name; end
  def call(env); end
  def initialize(_app); end
end
class Hanami::Static < Rack::Static
  def _urls(root); end
  def initialize(app, root: nil, header_rules: nil); end
end
module Hanami::Assets
end
class Hanami::Assets::Asset
  def config; end
  def exist?; end
  def find_asset; end
  def initialize(sources, path); end
  def original; end
  def path; end
  def precompile?; end
end
class Hanami::Assets::Static < Hanami::Static
  def _sources_from_applications; end
  def call(env); end
  def initialize(app); end
  def precompile(asset); end
  def serve(env, asset); end
  def serve?(asset); end
end
