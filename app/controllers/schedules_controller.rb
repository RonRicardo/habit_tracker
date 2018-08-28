class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    @schedule = Schedule.new
    @users = User.all
    @habits = Habit.all
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.valid?
      @schedule.save
      redirect_to schedule_path(@schedule)
    else
      render :new
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
    user_num = @schedule.user_id
    @user = User.find(user_num)
    @user_schedules = @user.schedules.to_ary
  end

  def edit
      @schedule = Schedule.find(params[:id])
      @users = User.all
      @habits = Habit.all
      render :edit
    end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to(@schedule)
    else
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    user = @schedule.user_id
    @schedule.destroy
    redirect_to user_path(user)
  end


  private
    def schedule_params
      # params.require(:schedule).permit(:user_id, :habit_id)
      params.require(:schedule).permit(:habit_id, :user_id, :frequency, :time, :start_date, :end_date)
    end

end
