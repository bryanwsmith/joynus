class Post < ActiveRecord::Base
  def raw_post
    self.contents.html_safe
  end
end
