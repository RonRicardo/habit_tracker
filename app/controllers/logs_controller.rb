class LogsController < ApplicationController
  before_action :authenticate_user!

  def create
    @log = Log.new(log_params)
    # if @log.valid?
      @log.save
  end

  def user_logs
    @user_logs = Logs.find_by(user_id: current_user.id)
  end

  private
    def log_params
      params.permit(:user_id, :scheduled_habit_id)
    end

end
