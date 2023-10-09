class String
  def hashtags
    self.scan(/#(\w+)/).flatten
  end
end
