require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

RDoc::Task.new(:rdoc) do |r|
  r.rdoc_dir = 'rdoc'
  r.title    = 'jsregexp'
  r.options << '--line-numbers'
  r.rdoc_files.include('lib/**/*.rb')
  r.rdoc_files.include('README.md')
end

Rake::TestTask.new(:spec) do |t|
  t.libs << 'spec'
  t.libs << 'lib'
  t.test_files = FileList['spec/**/*_spec.rb']
end

task default: :spec
