# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rack/all/rack.rbi
#
# rack-2.2.3

module Rack
  def self.release; end
  def self.version; end
end
module Rack::Auth
end
module Rack::Auth::Digest
end
module Rack::Session
end
class Rack::QueryParser
  def initialize(params_class, key_space_limit, param_depth_limit); end
  def key_space_limit; end
  def make_params; end
  def new_depth_limit(param_depth_limit); end
  def new_space_limit(key_space_limit); end
  def normalize_params(params, name, v, depth); end
  def param_depth_limit; end
  def params_hash_has_key?(hash, key); end
  def params_hash_type?(obj); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def self.make_default(key_space_limit, param_depth_limit); end
  def unescape(s); end
end
class Rack::QueryParser::ParameterTypeError < TypeError
end
class Rack::QueryParser::InvalidParameterError < ArgumentError
end
class Rack::QueryParser::Params
  def [](key); end
  def []=(key, value); end
  def initialize(limit); end
  def key?(key); end
  def to_h; end
  def to_params_hash; end
end
module Rack::Utils
  def add_cookie_to_header(header, key, value); end
  def add_remove_cookie_to_header(header, key, value = nil); end
  def best_q_match(q_value_header, available_mimes); end
  def build_nested_query(value, prefix = nil); end
  def build_query(params); end
  def byte_ranges(env, size); end
  def clean_path_info(path_info); end
  def clock_time; end
  def delete_cookie_header!(header, key, value = nil); end
  def escape(s); end
  def escape_html(string); end
  def escape_path(s); end
  def get_byte_ranges(http_range, size); end
  def make_delete_cookie_header(header, key, value); end
  def parse_cookies(env); end
  def parse_cookies_header(header); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def q_values(q_value_header); end
  def rfc2109(time); end
  def rfc2822(time); end
  def secure_compare(a, b); end
  def select_best_encoding(available_encodings, accept_encoding); end
  def self.add_cookie_to_header(header, key, value); end
  def self.add_remove_cookie_to_header(header, key, value = nil); end
  def self.best_q_match(q_value_header, available_mimes); end
  def self.build_nested_query(value, prefix = nil); end
  def self.build_query(params); end
  def self.byte_ranges(env, size); end
  def self.clean_path_info(path_info); end
  def self.clock_time; end
  def self.default_query_parser; end
  def self.default_query_parser=(arg0); end
  def self.delete_cookie_header!(header, key, value = nil); end
  def self.escape(s); end
  def self.escape_html(string); end
  def self.escape_path(s); end
  def self.get_byte_ranges(http_range, size); end
  def self.key_space_limit; end
  def self.key_space_limit=(v); end
  def self.make_delete_cookie_header(header, key, value); end
  def self.multipart_part_limit; end
  def self.multipart_part_limit=(arg0); end
  def self.param_depth_limit; end
  def self.param_depth_limit=(v); end
  def self.parse_cookies(env); end
  def self.parse_cookies_header(header); end
  def self.parse_nested_query(qs, d = nil); end
  def self.parse_query(qs, d = nil, &unescaper); end
  def self.q_values(q_value_header); end
  def self.rfc2109(time); end
  def self.rfc2822(time); end
  def self.secure_compare(a, b); end
  def self.select_best_encoding(available_encodings, accept_encoding); end
  def self.set_cookie_header!(header, key, value); end
  def self.status_code(status); end
  def self.unescape(s, encoding = nil); end
  def self.unescape_path(s); end
  def self.valid_path?(path); end
  def set_cookie_header!(header, key, value); end
  def status_code(status); end
  def unescape(s, encoding = nil); end
  def unescape_path(s); end
  def valid_path?(path); end
end
class Rack::Utils::Context
  def app; end
  def call(env); end
  def context(env, app = nil); end
  def for; end
  def initialize(app_f, app_r); end
  def recontext(app); end
end
class Rack::Utils::HeaderHash < Hash
  def [](k); end
  def []=(k, v); end
  def clear; end
  def delete(k); end
  def each; end
  def has_key?(k); end
  def include?(k); end
  def initialize(hash = nil); end
  def initialize_copy(other); end
  def key?(k); end
  def member?(k); end
  def merge!(other); end
  def merge(other); end
  def names; end
  def replace(other); end
  def self.[](headers); end
  def to_hash; end
end
class Rack::Request
  def delete_param(k); end
  def initialize(env); end
  def params; end
  def self.ip_filter; end
  def self.ip_filter=(arg0); end
  def update_param(k, v); end
  include Rack::Request::Env
  include Rack::Request::Helpers
end
module Rack::Request::Env
  def add_header(key, v); end
  def delete_header(name); end
  def each_header(&block); end
  def env; end
  def fetch_header(name, &block); end
  def get_header(name); end
  def has_header?(name); end
  def initialize(env); end
  def initialize_copy(other); end
  def set_header(name, v); end
end
module Rack::Request::Helpers
  def GET; end
  def POST; end
  def [](key); end
  def []=(key, value); end
  def accept_encoding; end
  def accept_language; end
  def allowed_scheme(header); end
  def authority; end
  def base_url; end
  def body; end
  def content_charset; end
  def content_length; end
  def content_type; end
  def cookies; end
  def default_session; end
  def delete?; end
  def delete_param(k); end
  def extract_proto_header(header); end
  def form_data?; end
  def forwarded_authority; end
  def forwarded_for; end
  def forwarded_port; end
  def forwarded_scheme; end
  def fullpath; end
  def get?; end
  def head?; end
  def host; end
  def host_authority; end
  def host_with_port(authority = nil); end
  def hostname; end
  def ip; end
  def link?; end
  def logger; end
  def media_type; end
  def media_type_params; end
  def multithread?; end
  def options?; end
  def params; end
  def parse_http_accept_header(header); end
  def parse_multipart; end
  def parse_query(qs, d = nil); end
  def parseable_data?; end
  def patch?; end
  def path; end
  def path_info; end
  def path_info=(s); end
  def port; end
  def post?; end
  def put?; end
  def query_parser; end
  def query_string; end
  def referer; end
  def referrer; end
  def reject_trusted_ip_addresses(ip_addresses); end
  def request_method; end
  def scheme; end
  def script_name; end
  def script_name=(s); end
  def server_authority; end
  def server_name; end
  def server_port; end
  def session; end
  def session_options; end
  def split_authority(authority); end
  def split_header(value); end
  def ssl?; end
  def trace?; end
  def trusted_proxy?(ip); end
  def unlink?; end
  def update_param(k, v); end
  def url; end
  def user_agent; end
  def values_at(*keys); end
  def wrap_ipv6(host); end
  def xhr?; end
end
class Rack::Files
  def call(env); end
  def fail(status, body, headers = nil); end
  def filesize(path); end
  def get(env); end
  def initialize(root, headers = nil, default_mime = nil); end
  def mime_type(path, default_mime); end
  def root; end
  def self.method_added(name); end
  def serving(request, path); end
end
class Rack::Files::BaseIterator
  def bytesize; end
  def close; end
  def each; end
  def each_range_part(file, range); end
  def initialize(path, ranges, options); end
  def multipart?; end
  def multipart_heading(range); end
  def options; end
  def path; end
  def ranges; end
end
class Rack::Files::Iterator < Rack::Files::BaseIterator
  def to_path; end
end
class Rack::Builder
  def call(env); end
  def freeze_app; end
  def generate_map(default_app, mapping); end
  def initialize(default_app = nil, &block); end
  def map(path, &block); end
  def run(app); end
  def self.app(default_app = nil, &block); end
  def self.load_file(path, opts = nil); end
  def self.new_from_string(builder_script, file = nil); end
  def self.parse_file(config, opts = nil); end
  def to_app; end
  def use(middleware, *args, &block); end
  def warmup(prc = nil, &block); end
end
class Rack::CommonLogger
  def call(env); end
  def extract_content_length(headers); end
  def initialize(app, logger = nil); end
  def log(env, status, header, began_at); end
end
class Rack::BodyProxy
  def close; end
  def closed?; end
  def initialize(body, &block); end
  def method_missing(method_name, *args, &block); end
  def respond_to_missing?(method_name, include_all = nil); end
end
class Rack::Cascade
  def <<(app); end
  def add(app); end
  def apps; end
  def call(env); end
  def include?(app); end
  def initialize(apps, cascade_for = nil); end
end
class Rack::Chunked
  def call(env); end
  def chunkable_version?(ver); end
  def initialize(app); end
  include Rack::Utils
end
class Rack::Chunked::Body
  def close; end
  def each(&block); end
  def initialize(body); end
  def yield_trailers; end
end
class Rack::Chunked::TrailerBody < Rack::Chunked::Body
  def yield_trailers; end
end
class Rack::ConditionalGet
  def call(env); end
  def etag_matches?(none_match, headers); end
  def fresh?(env, headers); end
  def initialize(app); end
  def modified_since?(modified_since, headers); end
  def to_rfc2822(since); end
end
class Rack::Config
  def call(env); end
  def initialize(app, &block); end
end
class Rack::ContentLength
  def call(env); end
  def initialize(app); end
  include Rack::Utils
end
class Rack::ContentType
  def call(env); end
  def initialize(app, content_type = nil); end
  include Rack::Utils
end
class Rack::ETag
  def call(env); end
  def digest_body(body); end
  def etag_body?(body); end
  def etag_status?(status); end
  def initialize(app, no_cache_control = nil, cache_control = nil); end
  def skip_caching?(headers); end
end
class Rack::Response
  def [](key); end
  def []=(key, v); end
  def body; end
  def body=(arg0); end
  def chunked?; end
  def close; end
  def delete_header(key); end
  def each(&callback); end
  def empty?; end
  def finish(&block); end
  def get_header(key); end
  def has_header?(key); end
  def header; end
  def headers; end
  def initialize(body = nil, status = nil, headers = nil); end
  def length; end
  def length=(arg0); end
  def redirect(target, status = nil); end
  def self.[](status, headers, body); end
  def set_header(key, v); end
  def status; end
  def status=(arg0); end
  def to_a(&block); end
  def write(chunk); end
  include Rack::Response::Helpers
end
module Rack::Response::Helpers
  def accepted?; end
  def add_header(key, v); end
  def append(chunk); end
  def bad_request?; end
  def buffered_body!; end
  def cache!(duration = nil, directive: nil); end
  def cache_control; end
  def cache_control=(v); end
  def client_error?; end
  def content_length; end
  def content_type; end
  def content_type=(content_type); end
  def created?; end
  def delete_cookie(key, value = nil); end
  def do_not_cache!; end
  def etag; end
  def etag=(v); end
  def forbidden?; end
  def include?(header); end
  def informational?; end
  def invalid?; end
  def location; end
  def location=(location); end
  def media_type; end
  def media_type_params; end
  def method_not_allowed?; end
  def moved_permanently?; end
  def no_content?; end
  def not_found?; end
  def ok?; end
  def precondition_failed?; end
  def redirect?; end
  def redirection?; end
  def server_error?; end
  def set_cookie(key, value); end
  def set_cookie_header; end
  def set_cookie_header=(v); end
  def successful?; end
  def unauthorized?; end
  def unprocessable?; end
end
class Rack::Response::Raw
  def delete_header(key); end
  def get_header(key); end
  def has_header?(key); end
  def headers; end
  def initialize(status, headers); end
  def set_header(key, v); end
  def status; end
  def status=(arg0); end
  include Rack::Response::Helpers
end
class Rack::Events
  def call(env); end
  def initialize(app, handlers); end
  def make_request(env); end
  def make_response(status, headers, body); end
  def on_commit(request, response); end
  def on_error(request, response, e); end
  def on_finish(request, response); end
  def on_start(request, response); end
end
module Rack::Events::Abstract
  def on_commit(req, res); end
  def on_error(req, res, e); end
  def on_finish(req, res); end
  def on_send(req, res); end
  def on_start(req, res); end
end
class Rack::Events::EventedBodyProxy < Rack::BodyProxy
  def each; end
  def initialize(body, request, response, handlers, &block); end
  def request; end
  def response; end
end
class Rack::Events::BufferedResponse < Rack::Response::Raw
  def body; end
  def initialize(status, headers, body); end
  def to_a; end
end
class Rack::Deflater
  def call(env); end
  def initialize(app, options = nil); end
  def should_deflate?(env, status, headers, body); end
end
class Rack::Deflater::GzipStream
  def close; end
  def each(&block); end
  def initialize(body, mtime, sync); end
  def write(data); end
end
class Rack::Directory
  def call(env); end
  def check_bad_request(path_info); end
  def check_forbidden(path_info); end
  def entity_not_found(path_info); end
  def filesize_format(int); end
  def get(env); end
  def initialize(root, app = nil); end
  def list_directory(path_info, path, script_name); end
  def list_path(env, path, path_info, script_name); end
  def root; end
  def stat(path); end
end
class Anonymous_Struct_1 < Struct
  def files; end
  def files=(_); end
  def path; end
  def path=(_); end
  def root; end
  def root=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Rack::Directory::DirectoryBody < Anonymous_Struct_1
  def DIR_FILE_escape(htmls); end
  def each; end
end
class Rack::ForwardRequest < Exception
  def env; end
  def initialize(url, env = nil); end
  def url; end
end
class Rack::Recursive
  def _call(env); end
  def call(env); end
  def include(env, path); end
  def initialize(app); end
end
module Rack::Handler
  def self.default; end
  def self.get(server); end
  def self.pick(server_names); end
  def self.register(server, klass); end
  def self.try_require(prefix, const_name); end
end
class Rack::Head
  def call(env); end
  def initialize(app); end
end
class Rack::Lint
  def _call(env); end
  def call(env = nil); end
  def check_content_length(status, headers); end
  def check_content_type(status, headers); end
  def check_env(env); end
  def check_error(error); end
  def check_headers(header); end
  def check_hijack(env); end
  def check_hijack_response(headers, env); end
  def check_input(input); end
  def check_status(status); end
  def close; end
  def each; end
  def initialize(app); end
  def verify_content_length(bytes); end
  include Rack::Lint::Assertion
end
class Rack::Lint::LintError < RuntimeError
end
module Rack::Lint::Assertion
  def assert(message); end
end
class Rack::Lint::InputWrapper
  def close(*args); end
  def each(*args); end
  def gets(*args); end
  def initialize(input); end
  def read(*args); end
  def rewind(*args); end
  include Rack::Lint::Assertion
end
class Rack::Lint::ErrorWrapper
  def close(*args); end
  def flush; end
  def initialize(error); end
  def puts(str); end
  def write(str); end
  include Rack::Lint::Assertion
end
class Rack::Lint::HijackWrapper
  def close(*args, &block); end
  def close_read(*args, &block); end
  def close_write(*args, &block); end
  def closed?(*args, &block); end
  def flush(*args, &block); end
  def initialize(io); end
  def read(*args, &block); end
  def read_nonblock(*args, &block); end
  def write(*args, &block); end
  def write_nonblock(*args, &block); end
  extend Forwardable
  include Rack::Lint::Assertion
end
class Rack::Lock
  def call(env); end
  def initialize(app, mutex = nil); end
  def unlock; end
end
class Rack::Logger
  def call(env); end
  def initialize(app, level = nil); end
end
class Rack::MediaType
  def self.params(content_type); end
  def self.strip_doublequotes(str); end
  def self.type(content_type); end
end
class Rack::MethodOverride
  def allowed_methods; end
  def call(env); end
  def initialize(app); end
  def method_override(env); end
  def method_override_param(req); end
end
module Rack::Mime
  def match?(value, matcher); end
  def mime_type(ext, fallback = nil); end
  def self.match?(value, matcher); end
  def self.mime_type(ext, fallback = nil); end
end
class Rack::NullLogger
  def <<(msg); end
  def add(severity, message = nil, progname = nil, &block); end
  def call(env); end
  def close; end
  def datetime_format; end
  def datetime_format=(datetime_format); end
  def debug(progname = nil, &block); end
  def debug?; end
  def error(progname = nil, &block); end
  def error?; end
  def fatal(progname = nil, &block); end
  def fatal?; end
  def formatter; end
  def formatter=(formatter); end
  def info(progname = nil, &block); end
  def info?; end
  def initialize(app); end
  def level; end
  def level=(level); end
  def progname; end
  def progname=(progname); end
  def sev_threshold; end
  def sev_threshold=(sev_threshold); end
  def unknown(progname = nil, &block); end
  def warn(progname = nil, &block); end
  def warn?; end
end
class Rack::Reloader
  def call(env); end
  def initialize(app, cooldown = nil, backend = nil); end
  def reload!(stderr = nil); end
  def safe_load(file, mtime, stderr = nil); end
end
module Rack::Reloader::Stat
  def figure_path(file, paths); end
  def rotation; end
  def safe_stat(file); end
end
class Rack::RewindableInput
  def close; end
  def each(&block); end
  def filesystem_has_posix_semantics?; end
  def gets; end
  def initialize(io); end
  def make_rewindable; end
  def read(*args); end
  def rewind; end
end
class Rack::Runtime
  def call(env); end
  def initialize(app, name = nil); end
end
class Rack::Sendfile
  def call(env); end
  def initialize(app, variation = nil, mappings = nil); end
  def map_accel_path(env, path); end
  def variation(env); end
end
class Rack::Server
  def app; end
  def build_app(app); end
  def build_app_and_options_from_config; end
  def build_app_from_string; end
  def check_pid!; end
  def daemonize_app; end
  def default_options; end
  def handle_profiling(heapfile, profile_mode, filename); end
  def initialize(options = nil); end
  def make_profile_name(filename); end
  def middleware; end
  def opt_parser; end
  def options; end
  def options=(arg0); end
  def parse_options(args); end
  def pidfile_process_status; end
  def self.default_middleware_by_environment; end
  def self.logging_middleware; end
  def self.middleware; end
  def self.start(options = nil); end
  def server; end
  def start(&block); end
  def wrapped_app; end
  def write_pid; end
end
class Rack::Server::Options
  def handler_opts(options); end
  def parse!(args); end
end
class Rack::ShowExceptions
  def accepts_html?(env); end
  def call(env); end
  def dump_exception(exception); end
  def h(obj); end
  def initialize(app); end
  def prefers_plaintext?(env); end
  def pretty(env, exception); end
  def template; end
end
class Rack::ShowStatus
  def call(env); end
  def h(obj); end
  def initialize(app); end
end
class Rack::Static
  def add_index_root?(path); end
  def applicable_rules(path); end
  def call(env); end
  def can_serve(path); end
  def initialize(app, options = nil); end
  def overwrite_file_path(path); end
  def route_file(path); end
end
class Rack::TempfileReaper
  def call(env); end
  def initialize(app); end
end
class Rack::URLMap
  def call(env); end
  def casecmp?(v1, v2); end
  def initialize(map = nil); end
  def remap(map); end
end
module Rack::Multipart
  def self.build_multipart(params, first = nil); end
  def self.extract_multipart(req, params = nil); end
  def self.parse_multipart(env, params = nil); end
end
class Rack::Multipart::MultipartPartLimitError < Errno::EMFILE
end
class Rack::Multipart::Parser
  def consume_boundary; end
  def full_boundary; end
  def get_filename(head); end
  def handle_consume_token; end
  def handle_empty_content!(content); end
  def handle_fast_forward; end
  def handle_mime_body; end
  def handle_mime_head; end
  def initialize(boundary, tempfile, bufsize, query_parser); end
  def on_read(content); end
  def result; end
  def run_parser; end
  def self.parse(io, content_length, content_type, tmpfile, bufsize, qp); end
  def self.parse_boundary(content_type); end
  def state; end
  def tag_multipart_encoding(filename, content_type, name, body); end
end
class Rack::Multipart::Parser::BoundedIO
  def initialize(io, content_length); end
  def read(size, outbuf = nil); end
  def rewind; end
end
class Rack::Multipart::Parser::MultipartInfo < Struct
  def params; end
  def params=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def tmp_files; end
  def tmp_files=(_); end
end
class Rack::Multipart::Parser::Collector
  def check_open_files; end
  def each; end
  def initialize(tempfile); end
  def on_mime_body(mime_index, content); end
  def on_mime_finish(mime_index); end
  def on_mime_head(mime_index, head, filename, content_type, name); end
  include Enumerable
end
class Anonymous_Struct_2 < Struct
  def body; end
  def body=(_); end
  def content_type; end
  def content_type=(_); end
  def filename; end
  def filename=(_); end
  def head; end
  def head=(_); end
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Rack::Multipart::Parser::Collector::MimePart < Anonymous_Struct_2
  def get_data; end
end
class Rack::Multipart::Parser::Collector::BufferPart < Rack::Multipart::Parser::Collector::MimePart
  def close; end
  def file?; end
end
class Rack::Multipart::Parser::Collector::TempfilePart < Rack::Multipart::Parser::Collector::MimePart
  def close; end
  def file?; end
end
class Rack::MockRequest
  def delete(uri, opts = nil); end
  def get(uri, opts = nil); end
  def head(uri, opts = nil); end
  def initialize(app); end
  def options(uri, opts = nil); end
  def patch(uri, opts = nil); end
  def post(uri, opts = nil); end
  def put(uri, opts = nil); end
  def request(method = nil, uri = nil, opts = nil); end
  def self.env_for(uri = nil, opts = nil); end
  def self.parse_uri_rfc2396(uri); end
end
class Rack::MockRequest::FatalWarning < RuntimeError
end
class Rack::MockRequest::FatalWarner
  def flush; end
  def puts(warning); end
  def string; end
  def write(warning); end
end
class Rack::MockResponse < Rack::Response
  def =~(other); end
  def body; end
  def cookie(name); end
  def cookies; end
  def empty?; end
  def errors; end
  def errors=(arg0); end
  def identify_cookie_attributes(cookie_filling); end
  def initialize(status, headers, body, errors = nil); end
  def match(other); end
  def original_headers; end
  def parse_cookies_from_header; end
  def self.[](*arg0); end
end
class Rack::Auth::AbstractHandler
  def bad_request; end
  def initialize(app, realm = nil, &authenticator); end
  def realm; end
  def realm=(arg0); end
  def unauthorized(www_authenticate = nil); end
end
class Rack::Auth::AbstractRequest
  def authorization_key; end
  def initialize(env); end
  def params; end
  def parts; end
  def provided?; end
  def request; end
  def scheme; end
  def valid?; end
end
class Rack::Auth::Basic < Rack::Auth::AbstractHandler
  def call(env); end
  def challenge; end
  def valid?(auth); end
end
class Rack::Auth::Basic::Request < Rack::Auth::AbstractRequest
  def basic?; end
  def credentials; end
  def username; end
end
class Rack::Auth::Digest::Params < Hash
  def [](k); end
  def []=(k, v); end
  def initialize; end
  def quote(str); end
  def self.dequote(str); end
  def self.parse(str); end
  def self.split_header_value(str); end
  def to_s; end
end
class Rack::Auth::Digest::Nonce
  def digest; end
  def fresh?; end
  def initialize(timestamp = nil, given_digest = nil); end
  def self.parse(string); end
  def self.private_key; end
  def self.private_key=(arg0); end
  def self.time_limit; end
  def self.time_limit=(arg0); end
  def stale?; end
  def to_s; end
  def valid?; end
end
class Rack::Auth::Digest::Request < Rack::Auth::AbstractRequest
  def correct_uri?; end
  def digest?; end
  def method; end
  def method_missing(sym, *args); end
  def nonce; end
  def params; end
  def respond_to?(sym, *arg1); end
end
class Rack::Auth::Digest::MD5 < Rack::Auth::AbstractHandler
  def A1(auth, password); end
  def A2(auth); end
  def H(data); end
  def KD(secret, data); end
  def call(env); end
  def challenge(hash = nil); end
  def digest(auth, password); end
  def initialize(app, realm = nil, opaque = nil, &authenticator); end
  def md5(data); end
  def opaque; end
  def opaque=(arg0); end
  def params(hash = nil); end
  def passwords_hashed=(arg0); end
  def passwords_hashed?; end
  def valid?(auth); end
  def valid_digest?(auth); end
  def valid_nonce?(auth); end
  def valid_opaque?(auth); end
  def valid_qop?(auth); end
end
class Rack::Session::SessionId
  def cookie_value; end
  def empty?; end
  def hash_sid(sid); end
  def initialize(public_id); end
  def inspect; end
  def private_id; end
  def public_id; end
  def to_s; end
end
module Rack::Session::Abstract
end
class Rack::Session::Abstract::SessionHash
  def [](key); end
  def []=(key, value); end
  def clear; end
  def delete(key); end
  def destroy; end
  def dig(key, *keys); end
  def each(&block); end
  def empty?; end
  def exists?; end
  def fetch(key, default = nil, &block); end
  def has_key?(key); end
  def id; end
  def id=(arg0); end
  def include?(key); end
  def initialize(store, req); end
  def inspect; end
  def key?(key); end
  def keys; end
  def load!; end
  def load_for_read!; end
  def load_for_write!; end
  def loaded?; end
  def merge!(hash); end
  def options; end
  def replace(hash); end
  def self.find(req); end
  def self.set(req, session); end
  def self.set_options(req, options); end
  def store(key, value); end
  def stringify_keys(other); end
  def to_hash; end
  def update(hash); end
  def values; end
  include Enumerable
end
class Rack::Session::Abstract::Persisted
  def call(env); end
  def commit_session(req, res); end
  def commit_session?(req, session, options); end
  def context(env, app = nil); end
  def cookie_value(data); end
  def current_session_id(req); end
  def default_options; end
  def delete_session(req, sid, options); end
  def extract_session_id(request); end
  def find_session(env, sid); end
  def force_options?(options); end
  def forced_session_update?(session, options); end
  def generate_sid(secure = nil); end
  def initialize(app, options = nil); end
  def initialize_sid; end
  def key; end
  def load_session(req); end
  def loaded_session?(session); end
  def make_request(env); end
  def prepare_session(req); end
  def security_matches?(request, options); end
  def session_class; end
  def session_exists?(req); end
  def set_cookie(request, res, cookie); end
  def sid_secure; end
  def write_session(req, sid, session, options); end
end
class Rack::Session::Abstract::PersistedSecure < Rack::Session::Abstract::Persisted
  def cookie_value(data); end
  def extract_session_id(*arg0); end
  def generate_sid(*arg0); end
  def session_class; end
end
class Rack::Session::Abstract::PersistedSecure::SecureSessionHash < Rack::Session::Abstract::SessionHash
  def [](key); end
end
class Rack::Session::Abstract::ID < Rack::Session::Abstract::Persisted
  def delete_session(req, sid, options); end
  def find_session(req, sid); end
  def self.inherited(klass); end
  def write_session(req, sid, session, options); end
end
class Rack::Session::Cookie < Rack::Session::Abstract::PersistedSecure
  def coder; end
  def delete_session(req, session_id, options); end
  def digest_match?(data, digest); end
  def extract_session_id(request); end
  def find_session(req, sid); end
  def generate_hmac(data, secret); end
  def initialize(app, options = nil); end
  def persistent_session_id!(data, sid = nil); end
  def secure?(options); end
  def unpacked_cookie_data(request); end
  def write_session(req, session_id, session, options); end
end
class Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(str); end
end
class Rack::Session::Cookie::Base64::Marshal < Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(str); end
end
class Rack::Session::Cookie::Base64::JSON < Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(obj); end
end
class Rack::Session::Cookie::Base64::ZipJSON < Rack::Session::Cookie::Base64
  def decode(str); end
  def encode(obj); end
end
class Rack::Session::Cookie::Identity
  def decode(str); end
  def encode(str); end
end
class Rack::Session::Cookie::SessionId < Anonymous_Delegator_3
  def cookie_value; end
  def initialize(session_id, cookie_value); end
end
class Rack::Session::Pool < Rack::Session::Abstract::PersistedSecure
  def delete_session(req, session_id, options); end
  def find_session(req, sid); end
  def generate_sid; end
  def get_session_with_fallback(sid); end
  def initialize(app, options = nil); end
  def mutex; end
  def pool; end
  def with_lock(req); end
  def write_session(req, session_id, new_session, options); end
end
