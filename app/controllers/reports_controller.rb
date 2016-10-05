class ReportsController < ApplicationController
  before_action :set_date

  def index
    @users = User.all # TODO: 報告対象者だけに絞る
  end

  private
    def set_date
      @date = params[:date] ? Date.parse(params[:date]) : Date.today
    end
end
