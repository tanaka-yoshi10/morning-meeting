class ReportsController < ApplicationController
  def index
    @date = Time.now
    @notes = Note.where(date: @date.beginning_of_day..@date.end_of_day)
  end
end
