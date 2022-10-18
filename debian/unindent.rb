# Copyright © 2009 Martin Aumont (mynyml)
# Licence Expat
# https://github.com/mynyml/unindent/blob/master/lib/unindent.rb
# https://github.com/mynyml/unindent/blob/master/LICENSE

class String
  def unindent
    indent = self.split("\n").select {|line| !line.strip.empty? }.map {|line| line.index(/[^\s]/) }.compact.min || 0
    self.gsub(/^[[:blank:]]{#{indent}}/, '')
  end
  def unindent!
    self.replace(self.unindent)
  end
end
