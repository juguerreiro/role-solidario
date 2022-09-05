class ReportNewLike < ApplicationRecord
  belongs_to :user
  belongs_to :report_new
end
