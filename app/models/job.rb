class Job < ActiveRecord::Base
  before_save :set_approved

  def location
    if self.city.present? && self.state.present?
      "#{self.city}, #{self.state}"
    else
      ""
    end
  end

  def formatted_date
    "#{self.date_approved.strftime('%b %d')}"
  end

  def set_approved
    self.date_approved = Date.today
  end
end
