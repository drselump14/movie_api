# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `better_errors` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module BetterErrors
  class << self
    def application_root; end
    def application_root=(_arg0); end
    def binding_of_caller_available; end
    def binding_of_caller_available=(_arg0); end
    def binding_of_caller_available?; end
    def default_editor; end
    def editor; end
    def editor=(editor); end
    def ignored_classes; end
    def ignored_classes=(_arg0); end
    def ignored_instance_variables; end
    def ignored_instance_variables=(_arg0); end
    def logger; end
    def logger=(_arg0); end
    def maximum_variable_inspect_size; end
    def maximum_variable_inspect_size=(_arg0); end
    def use_pry!; end
  end
end

class BetterErrors::CodeFormatter
  def initialize(filename, line, context = T.unsafe(nil)); end

  def coderay_scanner; end
  def context; end
  def context_lines; end
  def each_line_of(lines, &blk); end
  def filename; end
  def formatted_code; end
  def highlighted_lines; end
  def line; end
  def line_range; end
  def output; end
  def source_lines; end
end

BetterErrors::CodeFormatter::FILE_TYPES = T.let(T.unsafe(nil), Hash)

class BetterErrors::CodeFormatter::HTML < ::BetterErrors::CodeFormatter
  def formatted_code; end
  def formatted_lines; end
  def formatted_nums; end
  def source_unavailable; end
end

class BetterErrors::CodeFormatter::Text < ::BetterErrors::CodeFormatter
  def formatted_lines; end
  def source_unavailable; end
end

class BetterErrors::Editor
  def initialize(url_proc); end

  def url(raw_path, line); end

  private

  def host_path; end
  def url_proc; end
  def virtual_path; end

  class << self
    def default_editor; end
    def editor_from_command(editor_command); end
    def editor_from_environment_editor; end
    def editor_from_environment_formatting_string; end
    def editor_from_symbol(symbol); end
    def for_formatting_string(formatting_string); end
    def for_proc(url_proc); end
  end
end

BetterErrors::Editor::KNOWN_EDITORS = T.let(T.unsafe(nil), Array)

class BetterErrors::ErrorPage
  def initialize(exception, env); end

  def action_dispatch_action_endpoint; end
  def active_support_actions; end
  def application_frames; end
  def backtrace_frames; end
  def do_eval(opts); end
  def do_variables(opts); end
  def env; end
  def exception; end
  def exception_hint; end
  def exception_message; end
  def exception_type; end
  def first_frame; end
  def id; end
  def render(template_name = T.unsafe(nil), csrf_token = T.unsafe(nil)); end
  def repls; end

  private

  def editor_url(frame); end
  def eval_and_respond(index, code); end
  def html_formatted_code_block(frame); end
  def inspect_value(obj); end
  def rack_session; end
  def rails_params; end
  def request_path; end
  def text_formatted_code_block(frame); end
  def text_heading(char, str); end
  def uri_prefix; end

  class << self
    def template(template_name); end
    def template_path(template_name); end
  end
end

module BetterErrors::ExceptionExtension
  def __better_errors_bindings_stack; end
  def set_backtrace(*_arg0); end
end

class BetterErrors::ExceptionHint
  def initialize(exception); end

  def hint; end

  private

  def exception; end
end

class BetterErrors::InspectableValue
  def initialize(value); end

  def to_html; end

  private

  def original_value; end
  def value; end
  def value_as_html; end
  def value_small_enough_to_inspect?; end
end

class BetterErrors::Middleware
  def initialize(app, handler = T.unsafe(nil)); end

  def call(env); end

  private

  def allow_ip?(env); end
  def backtrace_frames; end
  def better_errors_call(env); end
  def internal_call(env, id, method); end
  def invalid_csrf_token_json_response; end
  def invalid_error_json_response; end
  def log_exception; end
  def no_errors_json_response; end
  def no_errors_page; end
  def not_acceptable_json_response; end
  def not_found_json_response; end
  def protected_app_call(env); end
  def show_error_page(env, exception = T.unsafe(nil)); end
  def text?(env); end

  class << self
    def allow_ip!(addr); end
  end
end

BetterErrors::Middleware::ALLOWED_IPS = T.let(T.unsafe(nil), Set)
BetterErrors::Middleware::CSRF_TOKEN_COOKIE_NAME = T.let(T.unsafe(nil), String)

module BetterErrors::REPL
  class << self
    def detect; end
    def provider; end
    def provider=(prov); end
    def test_provider(provider); end
  end
end

BetterErrors::REPL::PROVIDERS = T.let(T.unsafe(nil), Array)

class BetterErrors::RaisedException
  def initialize(exception); end

  def backtrace; end
  def exception; end
  def hint; end
  def message; end
  def type; end

  private

  def has_bindings?; end
  def massage_syntax_error; end
  def setup_backtrace; end
  def setup_backtrace_from_backtrace; end
  def setup_backtrace_from_bindings; end
  def setup_hint; end
end

class BetterErrors::StackFrame
  def initialize(filename, line, name, frame_binding = T.unsafe(nil)); end

  def application?; end
  def application_path; end
  def class_name; end
  def context; end
  def filename; end
  def frame_binding; end
  def gem?; end
  def gem_path; end
  def instance_variables; end
  def line; end
  def local_variable(name); end
  def local_variables; end
  def method_name; end
  def name; end
  def pretty_path; end
  def to_s; end
  def visible_instance_variables; end

  private

  def eval_local_variable(name); end
  def get_local_variable(name); end
  def set_pretty_method_name; end

  class << self
    def from_exception(exception); end
  end
end

BetterErrors::VERSION = T.let(T.unsafe(nil), String)
class BetterErrors::ValueLargerThanConfiguredMaximum < ::StandardError; end