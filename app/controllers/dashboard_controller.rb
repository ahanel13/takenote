class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_notes = current_user.notes
    @save_notes
    @user_courses
  end
end
