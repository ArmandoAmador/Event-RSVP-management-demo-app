class Event < ActiveRecord::Base
  belongs_to :organizers, class_name: 'User'
  extend FriendlyId
  friendly_id :title, use: :slugged

  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :title,
      [:title, :location]
    ]
  end
end
