class JSRegexp
  def self.convert(regexp)
    regexp.inspect
      .sub('\\A', '^')
      .sub('\\Z', '$')
      .sub('\\z', '$')
      .sub(/^\//, '')
      .sub(/\/[a-z]*$/, '')
      .gsub(/\(\?#.+\)/, '')
      .gsub(/\(\?-\w+:/, '(')
      .gsub(/\s/, '')
  end
end
