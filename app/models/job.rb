class Job < ActiveRecord::Base
  validates_presence_of :company, :contact_name, :email, :title, :department, :salary, :language

  scope :unapproved, -> { where(date_approved: nil) }

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
end
