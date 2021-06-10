# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `http_router` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class HttpRouter
  def initialize(*args, &blk); end

  def add(*args, &app); end
  def add_route(route); end
  def call(env, &callback); end
  def clone(klass = T.unsafe(nil)); end
  def compiling_call(env, &callback); end
  def compiling_path(route, *args); end
  def compiling_url(route, *args); end
  def compiling_url_ns(route, *args); end
  def default(app); end
  def default_app; end
  def default_app=(_arg0); end
  def default_host; end
  def default_host=(_arg0); end
  def default_port; end
  def default_port=(_arg0); end
  def default_scheme; end
  def default_scheme=(_arg0); end
  def delete(path, opts = T.unsafe(nil), &app); end
  def extend_route(&blk); end
  def get(path, opts = T.unsafe(nil), &app); end
  def head(path, opts = T.unsafe(nil), &app); end
  def ignore_trailing_slash?; end
  def inspect; end
  def link(path, opts = T.unsafe(nil), &app); end
  def named_routes; end
  def no_response(request, env); end
  def nodes; end
  def options(path, opts = T.unsafe(nil), &app); end
  def pass_on_response(response); end
  def patch(path, opts = T.unsafe(nil), &app); end
  def path(route, *args); end
  def post(path, opts = T.unsafe(nil), &app); end
  def process_destination_path(path, env); end
  def put(path, opts = T.unsafe(nil), &app); end
  def raw_call(env, &blk); end
  def raw_path(route, *args); end
  def raw_url(route, *args); end
  def raw_url_ns(route, *args); end
  def recognize(env, &callback); end
  def redirect_trailing_slash?; end
  def reset!; end
  def rewrite_partial_path_info(env, request); end
  def rewrite_path_info(env, request); end
  def root; end
  def route_class; end
  def route_class=(_arg0); end
  def routes; end
  def to_s; end
  def trace(path, opts = T.unsafe(nil), &app); end
  def uncompile; end
  def unlink(path, opts = T.unsafe(nil), &app); end
  def url(route, *args); end
  def url_mount; end
  def url_mount=(_arg0); end
  def url_ns(route, *args); end

  private

  def add_with_request_method(path, method, opts = T.unsafe(nil), &app); end
  def compile; end
end

class HttpRouter::AmbiguousVariableException < ::RuntimeError; end

module HttpRouter::GenerationHelper
  def max_param_count; end
  def param_names; end
  def path(*args); end
  def url(*args); end
  def url_ns(*args); end
end

class HttpRouter::Generator
  def initialize(route, paths); end

  def each_path; end
  def max_param_count; end
  def param_names; end
  def path(*args); end
  def url(*args); end
  def url_ns(*args); end

  private

  def append_querystring(uri, params); end
  def append_querystring_value(uri, key, value); end
  def matching_path(params, other_hash = T.unsafe(nil)); end
  def path_args_processing(args); end
  def path_with_params(*a); end
  def scheme_port; end
end

class HttpRouter::Generator::PathGenerator
  def initialize(route, path, validation_regex = T.unsafe(nil)); end

  def param_names; end
  def param_names=(_arg0); end
  def path; end
end

HttpRouter::Generator::SCHEME_PORTS = T.let(T.unsafe(nil), Hash)
class HttpRouter::InvalidRequestValueError < ::RuntimeError; end
class HttpRouter::InvalidRouteException < ::RuntimeError; end
class HttpRouter::LeftOverOptions < ::RuntimeError; end
class HttpRouter::MissingParameterException < ::RuntimeError; end

class HttpRouter::Node
  def initialize(router, parent, matchers = T.unsafe(nil)); end

  def add_destination(route, path, param_names = T.unsafe(nil)); end
  def add_free_match(regexp); end
  def add_glob; end
  def add_glob_regexp(matcher); end
  def add_host(hosts); end
  def add_lookup(part); end
  def add_match(regexp, matching_indicies = T.unsafe(nil), splitting_indicies = T.unsafe(nil)); end
  def add_request_method(rm); end
  def add_scheme(scheme); end
  def add_spanning_match(regexp, matching_indicies = T.unsafe(nil), splitting_indicies = T.unsafe(nil)); end
  def add_user_agent(uas); end
  def add_variable; end
  def depth; end
  def inspect; end
  def inspect_label; end
  def inspect_matchers_body; end
  def router; end
  def usable?(other); end

  private

  def add(matcher); end
  def inject_root_ivar(obj); end
  def inject_root_methods(code = T.unsafe(nil), &blk); end
  def root; end
  def to_code; end
  def use_named_captures?; end
end

class HttpRouter::Node::AbstractRequestNode < ::HttpRouter::Node
  def initialize(route, parent, tests, request_method); end

  def inspect_label; end
  def request_method; end
  def tests; end
  def to_code; end
  def usable?(other); end
end

class HttpRouter::Node::FreeRegex < ::HttpRouter::Node
  def initialize(router, parent, matcher); end

  def matcher; end
  def to_code; end
  def usable?(other); end
end

class HttpRouter::Node::Glob < ::HttpRouter::Node
  def to_code; end
  def usable?(other); end

  private

  def node_to_code; end
end

class HttpRouter::Node::GlobRegex < ::HttpRouter::Node::Glob
  def initialize(router, parent, matcher); end

  def matcher; end
  def to_code; end
  def usable?(other); end
end

class HttpRouter::Node::Host < ::HttpRouter::Node::AbstractRequestNode
  def initialize(router, parent, hosts); end
end

class HttpRouter::Node::Lookup < ::HttpRouter::Node
  def initialize(router, parent); end

  def add(part); end
  def inspect_label; end
  def inspect_matchers_body; end
  def to_code; end
  def usable?(other); end
end

class HttpRouter::Node::Path < ::HttpRouter::Node
  def initialize(router, parent, route, path, param_names = T.unsafe(nil)); end

  def duplicates; end
  def dynamic; end
  def dynamic?; end
  def hashify_params(params); end
  def inspect_label; end
  def param_names; end
  def path; end
  def route; end
  def to_code; end
  def usable?(other); end
end

class HttpRouter::Node::Regex < ::HttpRouter::Node
  def initialize(router, parent, matcher, capturing_indicies, splitting_indicies = T.unsafe(nil)); end

  def capturing_indicies; end
  def matcher; end
  def ordered_indicies; end
  def param_capturing_code; end
  def splitting_indicies; end
  def to_code; end
  def usable?(other); end

  private

  def node_to_code; end
end

class HttpRouter::Node::RequestMethod < ::HttpRouter::Node::AbstractRequestNode
  def initialize(router, parent, request_methods); end

  def to_code; end
end

class HttpRouter::Node::Root < ::HttpRouter::Node
  def initialize(router); end

  def compile(routes); end
  def compiled; end
  def compiled?; end
  def depth; end
  def inject_root_ivar(obj); end
  def inspect_label; end
  def methods_module; end
  def next_counter; end
  def uncompile; end

  private

  def add_complex_part(route, node, parts, path_generator); end
  def add_non_path_to_tree(route, node, path, param_names); end
  def add_normal_part(route, node, part, path_generator); end
  def add_route(route); end
end

class HttpRouter::Node::Scheme < ::HttpRouter::Node::AbstractRequestNode
  def initialize(router, parent, schemes); end
end

class HttpRouter::Node::SpanningRegex < ::HttpRouter::Node::Regex
  def to_code; end
end

class HttpRouter::Node::UserAgent < ::HttpRouter::Node::AbstractRequestNode
  def initialize(router, parent, user_agents); end
end

class HttpRouter::Node::Variable < ::HttpRouter::Node
  def to_code; end
  def usable?(other); end
end

class HttpRouter::RecognizeResponse < ::Struct
  def acceptable_methods; end
  def acceptable_methods=(_); end
  def matches; end
  def matches=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

module HttpRouter::RegexRouteGeneration
  def url_with_params(*a); end
end

class HttpRouter::Request
  def initialize(path, rack_request); end

  def acceptable_methods; end
  def called; end
  def called=(_arg0); end
  def called?; end
  def continue; end
  def continue=(_arg0); end
  def extra_env; end
  def extra_env=(_arg0); end
  def joined_path; end
  def params; end
  def params=(_arg0); end
  def passed_with; end
  def passed_with=(_arg0); end
  def path; end
  def path=(_arg0); end
  def path_finished?; end
  def rack; end
  def rack_request; end
  def rack_request=(_arg0); end
  def to_s; end
end

class HttpRouter::Response < ::Struct
  def initialize(request, path); end

  def param_values; end
  def params; end
  def route; end
end

class HttpRouter::Route
  def create_clone(new_router); end
  def default_values; end
  def dest; end
  def dest=(_arg0); end
  def generator; end
  def generator=(_arg0); end
  def host; end
  def host=(_arg0); end
  def ignore_trailing_slash; end
  def ignore_trailing_slash=(_arg0); end
  def match_partially; end
  def match_partially=(_arg0); end
  def matches_with(var_name); end
  def name; end
  def name=(name); end
  def original_path; end
  def original_path=(_arg0); end
  def other_hosts; end
  def path_for_generation; end
  def path_for_generation=(_arg0); end
  def path_validation_regex; end
  def path_validation_regex=(_arg0); end
  def paths; end
  def request_methods; end
  def router; end
  def router=(_arg0); end
  def scheme; end
  def scheme=(_arg0); end
  def to_s; end
  def user_agent; end
  def user_agent=(_arg0); end
end

HttpRouter::Route::VALID_HTTP_VERBS = T.let(T.unsafe(nil), Array)
HttpRouter::Route::VALID_HTTP_VERBS_WITHOUT_GET = T.let(T.unsafe(nil), Array)

module HttpRouter::RouteHelper
  def add_default_values(hash); end
  def add_match_with(matchers); end
  def add_other_host(hosts); end
  def add_path(path); end
  def add_request_method(methods); end
  def delete; end
  def get; end
  def head; end
  def link; end
  def name(name = T.unsafe(nil)); end
  def options; end
  def patch; end
  def path; end
  def path=(path); end
  def post; end
  def process_opts(opts); end
  def put; end
  def redirect(path, status = T.unsafe(nil)); end
  def static(root); end
  def to(dest = T.unsafe(nil), &dest_block); end
  def trace; end
  def unlink; end
end

class HttpRouter::TooManyParametersException < ::RuntimeError; end
module HttpRouter::Util; end
