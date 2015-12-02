# Ruby to JavaScript regular expression converter
class JSRegexp
  # Convert Ruby Regexp to JavaSript RegExp format
  #
  # @params regexp [Regexp, String] a Ruby regular expression
  # @return [String] JavaSript regular expression represented as a string
  def self.convert(regexp)
    regexp_str = regexp.is_a?(Regexp) ? regexp.inspect : regexp.to_s
    regexp_str
      .sub(/^\// , '')
      .sub(/\/[a-z]*$/ , '')
      .sub('\\A', '^')
      .sub('\\G', '^')
      .sub('\\Z', '$')
      .sub('\\z', '$')
      .gsub('\\R', '')
      .gsub('\\a', '')
      .gsub('\\e', '')
      .gsub(/\(\?#.+\)/, '')
      .gsub(/\(\?-\w+:/, '(')
      .gsub(/\s/, '')
  end
end
