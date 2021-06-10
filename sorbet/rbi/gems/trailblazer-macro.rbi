# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/trailblazer-macro/all/trailblazer-macro.rbi
#
# trailblazer-macro-2.1.6

module Trailblazer::Macro
  def self.Model(model_class, action = nil, find_by_key = nil, id: nil, not_found_terminus: nil); end
  def self.Nested(callable, id: nil, auto_wire: nil); end
  def self.Rescue(*exceptions, handler: nil, &block); end
  def self.Wrap(user_wrap, id: nil, &block); end
end
class Trailblazer::Macro::Model
  def call(options, params: nil, **arg2); end
end
class Trailblazer::Macro::Model::Builder
  def call(options, params); end
  def find_by!(model_class, params, action, find_by_key, *arg4); end
  def new!(model_class, params, *arg2); end
  def pass_through!(model_class, params, action, find_by_key, *arg4); end
end
module Trailblazer::Macro::Policy
  def self.Guard(proc, name: nil, &block); end
  def self.Pundit(policy_class, action, name: nil); end
  def self.step(condition, options, &block); end
end
class Trailblazer::Macro::Policy::Eval
  def call(arg0, **circuit_options); end
  def initialize(name: nil, path: nil); end
end
module Trailblazer::Macro::Policy::Guard
  def self.build(callable); end
end
module Trailblazer::Macro::Policy::Pundit
  def self.build(*args, &block); end
end
class Trailblazer::Macro::Policy::Pundit::Condition
  def build_policy(options); end
  def call(arg0, *arg1); end
  def initialize(policy_class, action); end
  def result!(success, policy); end
end
module Trailblazer
end
module Trailblazer::Macro::Nested
  def self.operation_class; end
end
class Trailblazer::Macro::Nested::Dynamic
  def compute_nested_activity(wrap_ctx, original_args); end
  def compute_return_signal(wrap_ctx, original_args); end
  def compute_task_outputs; end
  def initialize(nested_activity_decider, auto_wire: nil); end
  def outputs; end
end
module Trailblazer::Macro::Rescue
  def self.deprecate_positional_handler_signature(handler); end
end
module Trailblazer::Macro::Wrap
end
class Trailblazer::Macro::Wrap::Wrapped
  def call(arg0, **circuit_options); end
  def call_wrapped_activity(arg0, **circuit_options); end
  def deprecate_positional_wrap_signature(user_wrap); end
  def initialize(operation, user_wrap, outputs); end
end
module Trailblazer::Activity::DSL::Linear::Helper
end
module Trailblazer::Activity::DSL::Linear::Helper::ClassMethods
  def Model(*args, &block); end
  def Nested(*args, &block); end
  def Rescue(*args, &block); end
  def Wrap(*args, &block); end
  extend Forwardable
end
module Trailblazer::Version
end
module Trailblazer::Version::Macro
end
