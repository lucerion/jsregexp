$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'
require 'codeclimate-test-reporter'

CodeClimate::TestReporter.start

require 'jsregexp'
