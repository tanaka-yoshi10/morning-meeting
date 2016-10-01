class ReportsController < ApplicationController
  def index
    @date = Time.now
    @users = User.all
  end
end
