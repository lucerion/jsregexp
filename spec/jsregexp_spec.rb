require 'spec_helper'

describe JSRegexp do
  subject { JSRegexp }

  describe '.convert' do
    it 'return empty string for empty regex' do
      subject.convert(//).must_equal ''
    end

    it 'replace \A with ^' do
      subject.convert(/\A[a-z]/).must_equal '^[a-z]'
    end

    it 'replace \Z with $' do
      subject.convert(/[a-z]\Z/).must_equal '[a-z]$'
    end

    it 'replace \z with $' do
      subject.convert(/[a-z]\Z/).must_equal '[a-z]$'
    end

    it 'remove comments' do
      subject.convert(/(?# comment)/).must_equal ''
    end

    it 'replace group options' do
      subject.convert(/(?-mix:options)/).must_equal '(options)'
    end

    it 'remove whitespaces' do
      subject.convert(/[a-z] [1-9]/).must_equal '[a-z][1-9]'
    end
  end
end
