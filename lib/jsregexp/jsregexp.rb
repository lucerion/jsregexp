# Ruby to JavaScript regular expression converter
class JSRegexp
  # Convert Ruby Regexp to JavaSript RegExp format
  #
  # @params regexp [Regexp] a Ruby regular expression
  # @return [String] JavaSript regular expression represented as a string
  def self.convert(regexp)
    regexp.source
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
