# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/declarative-builder/all/declarative-builder.rbi
#
# declarative-builder-0.2.0

module Declarative
end
module Declarative::Builder
  def self.included(base); end
end
class Declarative::Builder::Builders < Array
  def <<(proc); end
  def call(context, *args, **options); end
end
module Declarative::Builder::DSL
  def builders; end
  def builds(proc = nil, &block); end
end
module Declarative::Builder::Build
  def build!(context, *args, **options); end
end
