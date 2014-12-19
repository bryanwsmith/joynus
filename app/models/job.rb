class Job < ActiveRecord::Base
  def location
    "#{self.city}, #{self.state}"
  end

  def formatted_date
    "#{self.date_approved.strftime('%b %d')}"
  end
end
