class ReportNewsController < ApplicationController
  def index
    @report_news = ReportNew.order(:created_at)
  end
end
