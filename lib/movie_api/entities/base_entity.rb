# frozen_string_literal: true

module BaseEntity
  def self.included(base)
    base.extend(ClassMethods)
  end

  class ClassMethods
    def schema=(_); end
  end
end
