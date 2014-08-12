
ActionDispatch::Callbacks.to_prepare do

  require_dependency 'queries_helper'
  QueriesHelper.send(:include, SortedFiltersModule) unless QueriesHelper.included_modules.include?(SortedFiltersModule)
end

Redmine::Plugin.register :sorted_filters do
  name 'Sorted Filters plugin'
  author 'Zhou Xuhui'
  description 'Get the issue filters sorted'
  version '0.0.1'
  url 'https://github.com/xuhui/sorted_filters'
  author_url 'https://github.com/xuhui'
end
