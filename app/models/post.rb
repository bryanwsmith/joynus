class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :history]

## Validations
  validates :contents, presence: true
  validates :title, presence: true

## Instance Methods
  def slug_candidates
    [
      :slug_title,
      [:id, :slug_title]
    ]
  end

  def slug_title
    title&.downcase
  end

  def should_generate_new_friendly_id?
      title_changed?
    end

  def raw_post
    self.contents.html_safe
  end
end
