class ScheduledHabitsController < ApplicationController
  before_action :set_scheduled_habit, only: [:show, :edit, :update, :destroy]

  # GET /scheduled_habits
  # GET /scheduled_habits.json
  def index
    @scheduled_habits = ScheduledHabit.all
  end

  # GET /scheduled_habits/1
  # GET /scheduled_habits/1.json
  def show
  end

  # GET /scheduled_habits/new
  def new
    @scheduled_habit = ScheduledHabit.new
    @habits = Habit.all
  end

  # POST /scheduled_habits
  # POST /scheduled_habits.json
  def create
    @scheduled_habit = ScheduledHabit.new(scheduled_habit_params)
    @scheduled_habit.user_id = current_user.id
      if @scheduled_habit.valid?
        @scheduled_habit.save
        redirect_to @scheduled_habit
      else
        render :new
      end
  end

  # GET /scheduled_habits/1/edit
  def edit
    @scheduled_habit = ScheduledHabit.find(params[:id])
    @user = current_user
    @habits = Habit.all
    render :edit
  end

  # PATCH/PUT /scheduled_habits/1
  def update
    @scheduled_habit = ScheduledHabit.find(params[:id])
      if @scheduled_habit.update(scheduled_habit_params)
        redirect_to @scheduled_habit
      else
        render :edit
      end
  end

  # DELETE /scheduled_habits/1
  # DELETE /scheduled_habits/1.json
  def destroy
    @scheduled_habit = ScheduledHabit.find(params[:id])
    @scheduled_habit.destroy
    redirect_to scheduled_habits_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduled_habit
      @scheduled_habit = ScheduledHabit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scheduled_habit_params
      params.permit(:habit_id, :user_id, :frequency, :start_date, :end_date, :completed)
    end
end
