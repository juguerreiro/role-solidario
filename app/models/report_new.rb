class ReportNew < ApplicationRecord
  belongs_to :user
  has_many :report_new_likes
end
