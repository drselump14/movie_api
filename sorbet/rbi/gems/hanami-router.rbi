# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/hanami-router/all/hanami-router.rbi
#
# hanami-router-1.3.2

module Hanami
end
module Hanami::Routing
end
class Hanami::Routing::Error < StandardError
end
class Hanami::Routing::EndpointNotFound < Hanami::Routing::Error
end
class Hanami::Routing::Endpoint < SimpleDelegator
  def destination_path; end
  def inspect; end
  def redirect?; end
  def routable?; end
end
class Hanami::Routing::ClassEndpoint < Hanami::Routing::Endpoint
  def call(env); end
end
class Hanami::Routing::LazyEndpoint < Hanami::Routing::Endpoint
  def call(env); end
  def initialize(name, namespace); end
  def inspect; end
  def klass; end
  def obj; end
end
class Hanami::Routing::RedirectEndpoint < Hanami::Routing::Endpoint
  def destination_path; end
  def initialize(destination_path, destination); end
  def redirect?; end
end
class Hanami::Routing::EndpointResolver
  def action_separator; end
  def classify(string); end
  def constantize(string); end
  def default; end
  def find(options); end
  def initialize(options = nil); end
  def resolve(options, &endpoint); end
  def resolve_action(string); end
  def resolve_callable(callable); end
  def resolve_matchable(matchable); end
end
class Hanami::Routing::Route < HttpRouter::Route
  def generate(resolver, options = nil, &endpoint); end
  def initialize(*arg0); end
  def nested_router; end
  def to=(dest = nil, &blk); end
end
module Hanami::Routing::Parsing
end
class Hanami::Routing::Parsing::BodyParsingError < Hanami::Routing::Error
end
class Hanami::Routing::Parsing::UnknownParserError < Hanami::Routing::Error
  def initialize(parser); end
end
class Hanami::Routing::Parsing::Parser
  def mime_types; end
  def parse(body); end
  def self.for(parser); end
  def self.require_parser(parser); end
end
class Hanami::Routing::Parsers
  def _parse(env, body); end
  def _redefine_call; end
  def _symbolize(body); end
  def call(env); end
  def content_type(env); end
  def initialize(parsers); end
  def media_type(env); end
  def prepare(args); end
end
class Hanami::Routing::ForceSsl
  def _redefine_call; end
  def call(env); end
  def force?(env); end
  def full_url(env); end
  def host; end
  def initialize(active, options = nil); end
  def port; end
  def redirect_code(env); end
  def scheme(env); end
  def ssl?(env); end
end
class HttpRouter
end
class HttpRouter::Node
end
class HttpRouter::Node::Path < HttpRouter::Node
end
class Hanami::Routing::InvalidRouteException < Hanami::Routing::Error
end
class Hanami::Routing::HttpRouter < HttpRouter
  def _custom_path(uri_string); end
  def _rescue_url_recognition; end
  def action_separator; end
  def add_with_request_method(path, method, opts = nil, &app); end
  def find(options); end
  def initialize(options = nil, &blk); end
  def mount(app, options); end
  def namespace; end
  def no_response(request, env); end
  def options(path, options = nil, &blk); end
  def pass_on_response(response); end
  def prefix; end
  def raw_call(env, &blk); end
  def raw_path(route, *args); end
  def raw_url(route, *args); end
  def reset!; end
  def rewrite_partial_path_info(env, request); end
end
class Hanami::Routing::Namespace < SimpleDelegator
  def delete(path, options = nil, &endpoint); end
  def get(path, options = nil, &endpoint); end
  def initialize(router, name, &blk); end
  def mount(app, options); end
  def namespace(name, &blk); end
  def options(path, options = nil, &endpoint); end
  def patch(path, options = nil, &endpoint); end
  def post(path, options = nil, &endpoint); end
  def put(path, options = nil, &endpoint); end
  def redirect(path, options = nil, &endpoint); end
  def resource(name, options = nil); end
  def resources(name, options = nil); end
  def trace(path, options = nil, &endpoint); end
end
class Hanami::Routing::Resource
  def _resource(klass, name, options, &blk); end
  def collection(&blk); end
  def generate(&blk); end
  def initialize(router, name, options = nil, parent = nil, &blk); end
  def member(&blk); end
  def parent; end
  def resource(name, options = nil, &blk); end
  def resources(name, options = nil, &blk); end
  def self.action; end
  def self.action=(arg0); end
  def self.actions; end
  def self.actions=(arg0); end
  def self.collection; end
  def self.collection=(arg0); end
  def self.member; end
  def self.member=(arg0); end
  def wildcard_param(route_param = nil); end
  extend Hanami::Utils::ClassAttribute::ClassMethods
  include Hanami::Utils::ClassAttribute
end
class Hanami::Routing::Resource::Options
  def [](key); end
  def actions; end
  def initialize(actions, options = nil); end
  def merge(hash); end
end
class Hanami::Routing::Resource::Nested
  def _calculate(param_wildcard, resource = nil); end
  def initialize(resource_name, resource); end
  def to_path; end
end
class Hanami::Routing::Resource::Action
  def _nested_rest_path; end
  def _singularized_as; end
  def action_name; end
  def as; end
  def controller_name; end
  def endpoint; end
  def generate(&blk); end
  def initialize(router, options = nil, resource = nil, &blk); end
  def namespace; end
  def path; end
  def resource_name; end
  def rest_path; end
  def self.class_for(action); end
  def self.generate(router, action, options = nil, resource = nil); end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  def separator; end
  def verb; end
  extend Hanami::Utils::ClassAttribute::ClassMethods
  include Hanami::Utils::ClassAttribute
end
class Hanami::Routing::Resource::CollectionAction < Hanami::Routing::Resource::Action
  def as(action_name); end
  def endpoint(action_name); end
  def generate(&blk); end
  def method_missing(m, *args); end
  def path(action_name); end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resource::MemberAction < Hanami::Routing::Resource::CollectionAction
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
module Hanami::Routing::Resource::DefaultMemberAction
  def as; end
  def path; end
end
class Hanami::Routing::Resource::New < Hanami::Routing::Resource::Action
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resource::DefaultMemberAction
end
class Hanami::Routing::Resource::Create < Hanami::Routing::Resource::Action
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resource::Show < Hanami::Routing::Resource::Action
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resource::Edit < Hanami::Routing::Resource::Action
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resource::DefaultMemberAction
end
class Hanami::Routing::Resource::Update < Hanami::Routing::Resource::Action
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resource::Destroy < Hanami::Routing::Resource::Action
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resources < Hanami::Routing::Resource
  def self.action; end
  def self.action=(arg0); end
  def self.actions; end
  def self.actions=(arg0); end
  def self.collection; end
  def self.collection=(arg0); end
  def self.member; end
  def self.member=(arg0); end
  def wildcard_param(route_param = nil); end
end
class Hanami::Routing::Resources::Action < Hanami::Routing::Resource::Action
  def self.identifier; end
  def self.identifier=(arg0); end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
module Hanami::Routing::Resources::PluralizedAction
  def as; end
end
class Hanami::Routing::Resources::CollectionAction < Hanami::Routing::Resource::CollectionAction
  def as(action_name); end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resources::MemberAction < Hanami::Routing::Resource::MemberAction
  def path(action_name); end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
module Hanami::Routing::Resources::DefaultMemberAction
  def path; end
end
class Hanami::Routing::Resources::Index < Hanami::Routing::Resources::Action
  def self.identifier; end
  def self.identifier=(arg0); end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resources::PluralizedAction
end
class Hanami::Routing::Resources::New < Hanami::Routing::Resource::New
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
end
class Hanami::Routing::Resources::Create < Hanami::Routing::Resource::Create
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resources::PluralizedAction
end
class Hanami::Routing::Resources::Show < Hanami::Routing::Resource::Show
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resources::DefaultMemberAction
end
class Hanami::Routing::Resources::Edit < Hanami::Routing::Resource::Edit
  def path; end
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resources::DefaultMemberAction
end
class Hanami::Routing::Resources::Update < Hanami::Routing::Resource::Update
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resources::DefaultMemberAction
end
class Hanami::Routing::Resources::Destroy < Hanami::Routing::Resource::Destroy
  def self.named_route_separator; end
  def self.named_route_separator=(arg0); end
  def self.namespace; end
  def self.namespace=(arg0); end
  def self.verb; end
  def self.verb=(arg0); end
  include Hanami::Routing::Resources::DefaultMemberAction
end
class Hanami::Router
  def call(env); end
  def define(&blk); end
  def defined?; end
  def delete(path, options = nil, &blk); end
  def env_for(env, options = nil, params = nil); end
  def get(path, options = nil, &blk); end
  def initialize(options = nil, &blk); end
  def inspector; end
  def link(path, options = nil, &blk); end
  def mount(app, options); end
  def namespace(namespace, &blk); end
  def options(path, options = nil, &blk); end
  def patch(path, options = nil, &blk); end
  def path(route, *args); end
  def post(path, options = nil, &blk); end
  def put(path, options = nil, &blk); end
  def recognize(env, options = nil, params = nil); end
  def redirect(path, options = nil, &endpoint); end
  def resource(name, options = nil, &blk); end
  def resources(name, options = nil, &blk); end
  def root(options = nil, &blk); end
  def routes; end
  def self.define(&blk); end
  def trace(path, options = nil, &blk); end
  def unlink(path, options = nil, &blk); end
  def url(route, *args); end
end
class Hanami::Router::NotRoutableEndpointError < Hanami::Routing::Error
  def initialize(env); end
end
