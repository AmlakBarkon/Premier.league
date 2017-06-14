
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  # Great job implementing error handling

  private
  def couldnt_find_record
    redirect_to teams_path, notice: "That record doesn't exist!"
  end
end
