class Event < ActiveRecord::Base
  belongs_to :user

  validates :information, :presence =>true
end
