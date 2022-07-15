# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'

spec = Gem::Specification.load('jsregexp.gemspec')

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

desc 'Uninstall gem'
task :uninstall do
  `gem uninstall #{spec.name}`
end

task purge: %i[uninstall clobber]
task default: :spec
