class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def new
    if Habit.all.length === 0
      flash[:alert] = "You have to add a habit first!"
      redirect_to new_habit_path
    else
      @habits = Habit.all
      @schedule = Schedule.new
      user_id = current_user.id
    end
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.user_id = current_user.id if current_user
    if @schedule.valid?
      @schedule.save
      redirect_to schedule_path(@schedule)
    else
      render :new
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
    @user = current_user
  end

  def edit
      @schedule = Schedule.find(params[:id])
      @user = current_user
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
    user = current_user
    @schedule.destroy
    render :index
  end


  private
    def schedule_params
      # params.require(:schedule).permit(:user_id, :habit_id)
      params.require(:schedule).permit(:habit_id, :user_id, :frequency, :time, :start_date, :end_date)
    end

end
