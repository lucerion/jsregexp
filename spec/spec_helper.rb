$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'jsregexp'
require 'minitest/autorun'
require 'codeclimate-test-reporter'

CodeClimate::TestReporter.start
