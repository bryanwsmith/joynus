class Job < ActiveRecord::Base
  validates_presence_of :company, :contact_name, :email, :title, :department, :salary, :language

  AVIONTE_URL = "http://joy.aviontego.com/portals/portals/jobboard/requirelogin.aspx?JobID="

  scope :unapproved, -> { where(date_approved: nil) }

  def location
    if self.city.present? && self.state.present?
      "#{self.city}, #{self.state}"
    elsif self.state.present?
      "#{self.state}"
    elsif self.city.present?
      "#{self.city}"
    else
      ""
    end
  end

  def formatted_date
    "#{self.date_approved.strftime('%b %d')}"
  end

  def job_url
    "#{Job::AVIONTE_URL}#{self.avionte_job_id}"
  end
end
