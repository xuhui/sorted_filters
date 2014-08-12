module SortedFiltersModule

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
       alias_method_chain :filters_options, :sorted
    end
  end

  module InstanceMethods
    def filters_options_with_sorted query
      options = filters_options_without_sorted query
      options.sort!
    end
  end

end
