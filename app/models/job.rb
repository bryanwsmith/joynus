class Job < ActiveRecord::Base
  def location
    "#{self.city}, #{self.state}"
  end
end
