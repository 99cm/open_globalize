source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'open', github: '99cm/open', branch: 'master'
gem 'globalize', github: 'globalize/globalize'
gem 'open_i18n', github: '99cm/open_i18n', branch: 'master'

gemspec