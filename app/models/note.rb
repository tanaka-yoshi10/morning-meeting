class Note < ApplicationRecord
  belongs_to :user
  scope :with_date, -> (date) { where(date: date.beginning_of_day..date.end_of_day) }
end
