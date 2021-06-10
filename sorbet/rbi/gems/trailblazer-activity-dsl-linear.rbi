# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/trailblazer-activity-dsl-linear/all/trailblazer-activity-dsl-linear.rbi
#
# trailblazer-activity-dsl-linear-0.4.0

module Trailblazer
end
class Trailblazer::Activity
  def self.FastTrack(options); end
  def self.Path(options); end
  def self.Railway(options); end
end
module Trailblazer::Activity::DSL
end
module Trailblazer::Activity::DSL::Linear
  def Merge(old_seq, new_seq, end_id: nil); end
  def self.Merge(old_seq, new_seq, end_id: nil); end
  def self.VariableMapping(input: nil, output: nil, output_with_outer_ctx: nil); end
  def self.strip_start_and_ends(seq, end_id:); end
  def strip_start_and_ends(seq, end_id:); end
  extend Trailblazer::Activity::DSL::Linear::Helper::ClassMethods
  include Trailblazer::Activity::DSL::Linear::Helper
end
module Trailblazer::Activity::DSL::Linear::Normalizer
  def activity_normalizer(sequence); end
  def add_end(end_event, magnetic_to:, id:); end
  def cleanup_options(arg0, *arg1); end
  def compile_wirings(arg0, *arg1); end
  def inherit_option(arg0, *arg1); end
  def input_output_dsl(arg0, *arg1); end
  def merge_normalizer_options(arg0, *arg1); end
  def merge_user_options(arg0, *arg1); end
  def normalize_connections_from_dsl(arg0, *arg1); end
  def normalize_context(arg0, *arg1); end
  def normalize_id(arg0, **arg1); end
  def normalize_outputs_from_dsl(arg0, *arg1); end
  def normalize_override(arg0, *arg1); end
  def normalize_step_interface(arg0, *arg1); end
  def output_to_id(ctx, output, target); end
  def output_to_track(ctx, output, track); end
  def self.activity_normalizer(sequence); end
  def self.add_end(end_event, magnetic_to:, id:); end
  def self.cleanup_options(arg0, *arg1); end
  def self.compile_wirings(arg0, *arg1); end
  def self.inherit_option(arg0, *arg1); end
  def self.input_output_dsl(arg0, *arg1); end
  def self.merge_normalizer_options(arg0, *arg1); end
  def self.merge_user_options(arg0, *arg1); end
  def self.normalize_connections_from_dsl(arg0, *arg1); end
  def self.normalize_context(arg0, *arg1); end
  def self.normalize_id(arg0, **arg1); end
  def self.normalize_outputs_from_dsl(arg0, *arg1); end
  def self.normalize_override(arg0, *arg1); end
  def self.normalize_step_interface(arg0, *arg1); end
  def self.output_to_id(ctx, output, target); end
  def self.output_to_track(ctx, output, track); end
  def self.wrap_task_with_step_interface(arg0, **arg1); end
  def wrap_task_with_step_interface(arg0, **arg1); end
end
class Trailblazer::Activity::DSL::Linear::State
  def copy; end
  def initialize(normalizers:, initial_sequence:, fields: nil, **normalizer_options); end
  def to_h; end
  def update_options(fields); end
  def update_sequence(&block); end
end
class Trailblazer::Activity::DSL::Linear::State::Normalizer
  def call(name, *args); end
  def compile_normalizer(normalizer_sequence); end
  def initialize(normalizer_sequences); end
end
module Trailblazer::Activity::DSL::Linear::Helper
  def self.included(base); end
end
class Trailblazer::Activity::DSL::Linear::Helper::OutputSemantic < Struct
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def value; end
  def value=(_); end
end
class Trailblazer::Activity::DSL::Linear::Helper::Id < Struct
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def value; end
  def value=(_); end
end
class Trailblazer::Activity::DSL::Linear::Helper::Track < Struct
  def adds; end
  def adds=(_); end
  def color; end
  def color=(_); end
  def options; end
  def options=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Trailblazer::Activity::DSL::Linear::Helper::Extension < Struct
  def call(*args, &block); end
  def callable; end
  def callable=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
module Trailblazer::Activity::DSL::Linear::Helper::ClassMethods
  def End(semantic); end
  def Id(id); end
  def Output(signal, semantic = nil); end
  def Path(track_color: nil, connect_to: nil, before: nil, **options, &block); end
  def Subprocess(activity, patch: nil); end
  def Track(color, wrap_around: nil); end
  def connect_for_sequence(sequence, connect_to:); end
  def end_id(_end); end
  def normalize(options, local_keys); end
end
module Trailblazer::Activity::DSL::Linear::Helper::ClassMethods::Patch
  def call(activity, path, customization); end
  def customize(activity, options:); end
  def self.call(activity, path, customization); end
  def self.customize(activity, options:); end
end
module Trailblazer::Activity::DSL::Linear::Strategy
  def Path(**options, &block); end
  def call(args, **circuit_options); end
  def forward_block(args, block); end
  def inherited(inheriter); end
  def initialize!(state); end
  def invoke(*args); end
  def merge!(activity); end
  def recompile_activity!(seq); end
  def recompile_activity_for(type, *args, &block); end
  def self.task_for!(state, type, task, options = nil, &block); end
  def step(*args, &block); end
  def to_h; end
end
class Trailblazer::Activity::DSL::Linear::Strategy::BlockProxy < Struct
  def block; end
  def block=(_); end
  def options; end
  def options=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
module Trailblazer::Activity::DSL::Linear::Compiler
  def call(sequence, find_stops: nil, find_start: nil); end
  def find_connections(seq_row, strategies, sequence); end
  def find_start_task_ids(intermediate_wiring); end
  def find_stop_task_ids(intermediate_wiring); end
  def self.call(sequence, find_stops: nil, find_start: nil); end
  def self.find_connections(seq_row, strategies, sequence); end
  def self.find_start_task_ids(intermediate_wiring); end
  def self.find_stop_task_ids(intermediate_wiring); end
end
class Trailblazer::Activity::Path
  extend Trailblazer::Activity::DSL::Linear::Helper::ClassMethods
  extend Trailblazer::Activity::DSL::Linear::Strategy
  include Trailblazer::Activity::DSL::Linear::Helper
end
module Trailblazer::Activity::Path::DSL
  def append_end(sequence, **options); end
  def append_end_options(task:, magnetic_to:, id:, append_to: nil); end
  def initial_sequence(track_name:, end_task:, end_id:); end
  def merge_path_connections(arg0, *arg1); end
  def merge_path_outputs(arg0, *arg1); end
  def normalize_magnetic_to(arg0, *arg1); end
  def normalize_sequence_insert(arg0, *arg1); end
  def normalizer; end
  def prepend_step_options(sequence); end
  def prepend_to_path(sequence, steps, insertion_method = nil, insert_id = nil); end
  def raise_on_duplicate_id(arg0, *arg1); end
  def self.OptionsForState(normalizers: nil, track_name: nil, end_task: nil, end_id: nil, **options); end
  def self.append_end(sequence, **options); end
  def self.append_end_options(task:, magnetic_to:, id:, append_to: nil); end
  def self.initial_sequence(track_name:, end_task:, end_id:); end
  def self.merge_path_connections(arg0, *arg1); end
  def self.merge_path_outputs(arg0, *arg1); end
  def self.normalize_magnetic_to(arg0, *arg1); end
  def self.normalize_sequence_insert(arg0, *arg1); end
  def self.normalizer; end
  def self.prepend_step_options(sequence); end
  def self.prepend_to_path(sequence, steps, insertion_method = nil, insert_id = nil); end
  def self.raise_on_duplicate_id(arg0, *arg1); end
  def self.sequence_insert_options; end
  def self.start_sequence(track_name:); end
  def self.unary_connections(track_name: nil); end
  def self.unary_outputs; end
  def sequence_insert_options; end
  def start_sequence(track_name:); end
  def unary_connections(track_name: nil); end
  def unary_outputs; end
end
class Trailblazer::Activity::Path::DSL::State < Trailblazer::Activity::DSL::Linear::State
  def step(*args); end
end
class Trailblazer::Activity::Railway
  def self.fail(*args, &block); end
  def self.pass(*args, &block); end
  extend Trailblazer::Activity::DSL::Linear::Helper::ClassMethods
  extend Trailblazer::Activity::DSL::Linear::Strategy
  include Trailblazer::Activity::DSL::Linear::Helper
end
module Trailblazer::Activity::Railway::DSL
  def failure_connections; end
  def failure_outputs; end
  def initial_sequence(failure_end:, initial_sequence:, **path_options); end
  def normalize_path_connections(arg0, *arg1); end
  def normalize_path_outputs(arg0, *arg1); end
  def normalizer; end
  def normalizer_for_fail; end
  def normalizer_for_pass; end
  def self.OptionsForState(normalizers: nil, failure_end: nil, **options); end
  def self.failure_connections; end
  def self.failure_outputs; end
  def self.initial_sequence(failure_end:, initial_sequence:, **path_options); end
  def self.normalize_path_connections(arg0, *arg1); end
  def self.normalize_path_outputs(arg0, *arg1); end
  def self.normalizer; end
  def self.normalizer_for_fail; end
  def self.normalizer_for_pass; end
  def self.step_options(sequence); end
  def step_options(sequence); end
end
module Trailblazer::Activity::Railway::DSL::Fail
  def connect_success_to_failure(arg0, *arg1); end
  def merge_magnetic_to(arg0, *arg1); end
  def self.connect_success_to_failure(arg0, *arg1); end
  def self.merge_magnetic_to(arg0, *arg1); end
end
module Trailblazer::Activity::Railway::DSL::Pass
  def connect_failure_to_success(arg0, *arg1); end
  def self.connect_failure_to_success(arg0, *arg1); end
end
class Trailblazer::Activity::Railway::DSL::State < Trailblazer::Activity::Path::DSL::State
  def fail(*args); end
  def pass(*args); end
end
class Trailblazer::Activity::FastTrack
  def self.fail(*args, &block); end
  def self.pass(*args, &block); end
  extend Trailblazer::Activity::DSL::Linear::Helper::ClassMethods
  extend Trailblazer::Activity::DSL::Linear::Strategy
  include Trailblazer::Activity::DSL::Linear::Helper
end
class Trailblazer::Activity::FastTrack::FailFast < Trailblazer::Activity::Signal
end
class Trailblazer::Activity::FastTrack::PassFast < Trailblazer::Activity::Signal
end
module Trailblazer::Activity::FastTrack::DSL
  def fail_fast_option(arg0, *arg1); end
  def fail_fast_option_for_fail(arg0, *arg1); end
  def fast_track_option(arg0, *arg1); end
  def initial_sequence(initial_sequence:, fail_fast_end: nil, pass_fast_end: nil, **_o); end
  def merge_connections_for(ctx, options, option_name, semantic, magnetic_to = nil); end
  def merge_outputs_for(ctx, outputs); end
  def normalizer; end
  def normalizer_for_fail; end
  def normalizer_for_pass; end
  def pass_fast_option(arg0, *arg1); end
  def pass_fast_option_for_pass(arg0, *arg1); end
  def self.OptionsForState(normalizers: nil, **options); end
  def self.fail_fast_option(arg0, *arg1); end
  def self.fail_fast_option_for_fail(arg0, *arg1); end
  def self.fast_track_option(arg0, *arg1); end
  def self.initial_sequence(initial_sequence:, fail_fast_end: nil, pass_fast_end: nil, **_o); end
  def self.merge_connections_for(ctx, options, option_name, semantic, magnetic_to = nil); end
  def self.merge_outputs_for(ctx, outputs); end
  def self.normalizer; end
  def self.normalizer_for_fail; end
  def self.normalizer_for_pass; end
  def self.pass_fast_option(arg0, *arg1); end
  def self.pass_fast_option_for_pass(arg0, *arg1); end
  def self.step_options(sequence); end
  def step_options(sequence); end
end
module Trailblazer::Activity::DSL::Linear::VariableMapping
  def default_input; end
  def default_output; end
  def filter_for(filter); end
  def output_option_for(option, pass_outer_ctx); end
  def self.default_input; end
  def self.default_output; end
  def self.filter_for(filter); end
  def self.output_option_for(option, pass_outer_ctx); end
end
module Trailblazer::Activity::DSL::Linear::VariableMapping::DSL
  def self.filter_from_dsl(map); end
  def self.hash_for(ary); end
end
module Trailblazer::Activity::DSL::Linear::VariableMapping::Input
end
class Trailblazer::Activity::DSL::Linear::VariableMapping::Input::Scoped
  def call(arg0, **circuit_options); end
  def initialize(filter); end
end
module Trailblazer::Activity::DSL::Linear::VariableMapping::Output
end
class Trailblazer::Activity::DSL::Linear::VariableMapping::Output::Unscoped
  def call(new_ctx, arg1, **circuit_options); end
  def call_filter(new_ctx, arg1, **circuit_options); end
  def initialize(filter); end
end
class Trailblazer::Activity::DSL::Linear::VariableMapping::Output::Unscoped::WithOuterContext < Trailblazer::Activity::DSL::Linear::VariableMapping::Output::Unscoped
  def call_filter(new_ctx, arg1, **circuit_options); end
end
class Trailblazer::Activity::DSL::Linear::Sequence < Array
  def self.apply_adds(sequence, adds); end
  def self.create_row(task:, magnetic_to:, wirings:, **options); end
  def self.insert_row(sequence, row:, insert:); end
end
class Trailblazer::Activity::DSL::Linear::Sequence::IndexError < IndexError
  def initialize(sequence, step_id); end
  def step_id; end
end
module Trailblazer::Activity::DSL::Linear::Search
  def ById(output, id); end
  def Forward(output, target_color); end
  def Noop(output); end
  def WrapAround(output, target_color); end
  def find_in_range(range, target_color); end
  def self.ById(output, id); end
  def self.Forward(output, target_color); end
  def self.Noop(output); end
  def self.WrapAround(output, target_color); end
  def self.find_in_range(range, target_color); end
end
module Trailblazer::Activity::DSL::Linear::Insert
  def Append(sequence, new_rows, insert_id); end
  def Delete(sequence, _, insert_id); end
  def Prepend(sequence, new_rows, insert_id); end
  def Replace(sequence, new_rows, insert_id); end
  def find(sequence, insert_id); end
  def find_index(sequence, insert_id); end
  def self.Append(sequence, new_rows, insert_id); end
  def self.Delete(sequence, _, insert_id); end
  def self.Prepend(sequence, new_rows, insert_id); end
  def self.Replace(sequence, new_rows, insert_id); end
  def self.find(sequence, insert_id); end
  def self.find_index(sequence, insert_id); end
end
module Trailblazer::Activity::DSL::Linear::DSL
  def apply_adds_from_dsl(sequence, sequence_insert:, adds:, **options); end
  def insert_task(sequence, sequence_insert:, **options); end
  def self.apply_adds_from_dsl(sequence, sequence_insert:, adds:, **options); end
  def self.insert_task(sequence, sequence_insert:, **options); end
end
module Trailblazer::Version
end
module Trailblazer::Version::Activity
end
module Trailblazer::Version::Activity::DSL
end
module Trailblazer::Version::Activity::DSL::Linear
end