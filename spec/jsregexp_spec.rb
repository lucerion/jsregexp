require 'spec_helper'

describe JSRegexp do
  subject { JSRegexp }

  describe '.convert' do
    it 'return empty string for empty regex' do
      subject.convert(//).must_equal ''
    end

    it 'return empty string for empty string' do
      subject.convert('').must_equal ''
    end

    it 'return empty string for nil' do
      subject.convert(nil).must_equal ''
    end

    it 'replace \A anchor with ^' do
      subject.convert(/\A[a-z]/).must_equal '^[a-z]'
      subject.convert('/\A[a-z]/').must_equal '^[a-z]'
      subject.convert('\A[a-z]').must_equal '^[a-z]'
    end

    it 'replace \G anchor with ^' do
      subject.convert(/\G[a-z]/).must_equal '^[a-z]'
      subject.convert('/\G[a-z]/').must_equal '^[a-z]'
      subject.convert('\G[a-z]').must_equal '^[a-z]'
    end

    it 'replace \Z anchor with $' do
      subject.convert(/[a-z]\Z/).must_equal '[a-z]$'
      subject.convert('/[a-z]\Z/').must_equal '[a-z]$'
      subject.convert('[a-z]\Z').must_equal '[a-z]$'
    end

    it 'replace \z anchor with $' do
      subject.convert(/[a-z]\z/).must_equal '[a-z]$'
      subject.convert('/[a-z]\z/').must_equal '[a-z]$'
      subject.convert('[a-z]\z').must_equal '[a-z]$'
    end

    it 'remove \R (line break) character' do
      subject.convert(/[a-z]\R/).must_equal '[a-z]'
      subject.convert('/[a-z]\R/').must_equal '[a-z]'
      subject.convert('[a-z]\R').must_equal '[a-z]'
    end

    it 'remove \a (bell/alert) character' do
      subject.convert(/\a[a-z]/).must_equal '[a-z]'
      subject.convert('/\a[a-z]/').must_equal '[a-z]'
      subject.convert('\a[a-z]').must_equal '[a-z]'
    end

    it 'remove \e (escape) character' do
      subject.convert(/\e[a-z]/).must_equal '[a-z]'
      subject.convert('/\e[a-z]/').must_equal '[a-z]'
      subject.convert('\e[a-z]').must_equal '[a-z]'
    end

    it 'remove comments' do
      subject.convert(/(?# comment)/).must_equal ''
      subject.convert('/(?# comment)/').must_equal ''
      subject.convert('(?# comment)').must_equal ''
    end

    it 'replace group options' do
      subject.convert(/(?-mix:options)/).must_equal '(options)'
      subject.convert('/(?-mix:options)/').must_equal '(options)'
      subject.convert('(?-mix:options)').must_equal '(options)'
    end

    it 'remove whitespaces' do
      subject.convert(/[a-z] [1-9]/).must_equal '[a-z][1-9]'
      subject.convert('/[a-z] [1-9]/').must_equal '[a-z][1-9]'
      subject.convert('[a-z] [1-9]').must_equal '[a-z][1-9]'
    end
  end
end
