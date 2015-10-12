class JSRegexp
  def self.convert(regexp)
    regexp.source
      .sub('\\A', '^')
      .sub('\\Z', '$')
      .sub('\\z', '$')
      .gsub(/\(\?#.+\)/, '')
      .gsub(/\(\?-\w+:/, '(')
      .gsub(/\s/, '')
  end
end
