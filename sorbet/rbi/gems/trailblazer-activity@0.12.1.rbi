# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `trailblazer-activity` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Trailblazer
  class << self
    def Context(wrapped_options, mutable_options = T.unsafe(nil), context_options = T.unsafe(nil)); end
    def Operation(options); end
    def Option(proc); end
  end
end

class Trailblazer::Activity
  def initialize(schema); end

  def [](*key); end
  def call(args, **circuit_options); end
  def inspect; end
  def to_h; end

  class << self
    def End(semantic); end
    def FastTrack(options); end
    def Output(signal, semantic); end
    def Path(options); end
    def Railway(options); end
  end
end

class Trailblazer::Activity::Circuit
  def initialize(map, stop_events, start_task:, name: T.unsafe(nil)); end

  def call(args, start_task: T.unsafe(nil), runner: T.unsafe(nil), **circuit_options); end
  def to_h; end

  private

  def next_for(last_task, signal); end
end

class Trailblazer::Activity::Circuit::IllegalSignalError < ::RuntimeError
  def initialize(task, signal:, outputs:, exec_context:); end

  def signal; end
  def task; end
end

Trailblazer::Activity::Circuit::Run = T.let(T.unsafe(nil), Proc)

class Trailblazer::Activity::End
  def initialize(semantic:, **options); end

  def call(args, **circuit_options); end
  def inspect; end
  def to_h; end
  def to_s; end
end

module Trailblazer::Activity::Introspect
  class << self
    def Graph(*args); end
    def render_task(proc); end
  end
end

class Trailblazer::Activity::Introspect::Graph
  def initialize(activity); end

  def collect(strategy: T.unsafe(nil)); end
  def find(id = T.unsafe(nil), &block); end
  def stop_events; end

  private

  def Node(*args); end
  def find_by_id(id); end
  def find_with_block; end
  def node_for(node_attributes); end
  def outgoings_for(node); end
end

class Trailblazer::Activity::Introspect::Graph::Node < ::Struct
  def data; end
  def data=(_); end
  def id; end
  def id=(_); end
  def outgoings; end
  def outgoings=(_); end
  def outputs; end
  def outputs=(_); end
  def task; end
  def task=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Introspect::Graph::Outgoing < ::Struct
  def output; end
  def output=(_); end
  def task; end
  def task=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Left < ::Trailblazer::Activity::Signal; end

class Trailblazer::Activity::NodeAttributes < ::Struct
  def data; end
  def data=(_); end
  def id; end
  def id=(_); end
  def outputs; end
  def outputs=(_); end
  def task; end
  def task=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Output < ::Struct
  def semantic; end
  def semantic=(_); end
  def signal; end
  def signal=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Right < ::Trailblazer::Activity::Signal; end
class Trailblazer::Activity::Schema < ::Struct; end

module Trailblazer::Activity::Schema::Implementation
  class << self
    def Task(task, outputs, extensions = T.unsafe(nil)); end
  end
end

class Trailblazer::Activity::Schema::Implementation::Task < ::Struct
  def circuit_task; end
  def circuit_task=(_); end
  def extensions; end
  def extensions=(_); end
  def outputs; end
  def outputs=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Schema::Intermediate < ::Struct
  class << self
    def Out(*args); end
    def TaskRef(id, data = T.unsafe(nil)); end
    def call(intermediate, implementation, config_merge: T.unsafe(nil)); end
    def circuit(intermediate, implementation); end
    def config(implementation, config:); end
    def connections_for(outs, task_outputs, implementation); end
    def node_attributes(intermediate, implementation); end
    def outputs(stop_task_ids, nodes_attributes); end

    private

    def for_semantic(outputs, semantic); end
  end
end

class Trailblazer::Activity::Schema::Intermediate::Out < ::Struct
  def semantic; end
  def semantic=(_); end
  def target; end
  def target=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Schema::Intermediate::TaskRef < ::Struct
  def data; end
  def data=(_); end
  def id; end
  def id=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Trailblazer::Activity::Signal; end

class Trailblazer::Activity::Start < ::Trailblazer::Activity::End
  def call(args, **circuit_options); end
end

module Trailblazer::Activity::State; end

module Trailblazer::Activity::State::Config
  private

  def get(state, *args); end
  def set(state, *args); end

  class << self
    def get(state, *args); end
    def set(state, *args); end
  end
end

module Trailblazer::Activity::TaskBuilder
  class << self
    def Binary(user_proc); end
    def binary_signal_for(result, on_true, on_false); end
  end
end

class Trailblazer::Activity::TaskBuilder::Task
  def initialize(task, user_proc); end

  def call(_arg0, **circuit_options); end
  def inspect; end
  def to_s; end
end

module Trailblazer::Activity::TaskWrap
  private

  def Extension(merge:); end
  def initial_wrap_static(*_arg0); end
  def invoke(activity, args, wrap_runtime: T.unsafe(nil), wrap_static: T.unsafe(nil), **circuit_options); end

  class << self
    def Extension(merge:); end
    def call_task(wrap_ctx, original_args); end
    def initial_wrap_static(*_arg0); end
    def invoke(activity, args, wrap_runtime: T.unsafe(nil), wrap_static: T.unsafe(nil), **circuit_options); end
    def wrap_static_for(task, activity:, **_arg2); end
  end
end

class Trailblazer::Activity::TaskWrap::Extension
  def initialize(merge:); end

  def call(config:, task:, **_arg2); end
end

module Trailblazer::Activity::TaskWrap::Inject; end

module Trailblazer::Activity::TaskWrap::Inject::Defaults
  private

  def Extension(defaults); end
  def defaults_for(defaults, original_ctx); end

  class << self
    def Extension(defaults); end
    def defaults_for(defaults, original_ctx); end
  end
end

class Trailblazer::Activity::TaskWrap::Input
  def initialize(filter, id:); end

  def call(wrap_ctx, original_args); end

  private

  def apply_filter(_arg0, original_circuit_options); end
end

class Trailblazer::Activity::TaskWrap::Output
  def initialize(filter, id:); end

  def call(wrap_ctx, original_args); end
end

class Trailblazer::Activity::TaskWrap::Pipeline
  def initialize(sequence); end

  def call(wrap_ctx, original_args); end
  def sequence; end

  class << self
    def append(pipe, _, insertion); end
    def insert_after(pipe, after_id, insertion); end
    def insert_before(pipe, before_id, insertion); end
  end
end

class Trailblazer::Activity::TaskWrap::Pipeline::Merge
  def initialize(*extension_rows); end

  def call(task_wrap_pipeline); end
end

module Trailblazer::Activity::TaskWrap::Runner
  class << self
    def call(task, args, **circuit_options); end

    private

    def merge_static_with_runtime(task, wrap_runtime:, **circuit_options); end
  end
end

module Trailblazer::Activity::TaskWrap::VariableMapping
  class << self
    def Extension(input, output, id: T.unsafe(nil)); end
    def merge_for(input, output, id:); end
  end
end

module Trailblazer::Version; end
module Trailblazer::Version::Activity; end
Trailblazer::Version::Activity::VERSION = T.let(T.unsafe(nil), String)
Trailblazer::Version::VERSION = T.let(T.unsafe(nil), String)