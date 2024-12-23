class HabitsController < ApplicationController
  before_action :set_habit
  def show
    # @habit = Habit.first
  end

  def plus
    @habit.update(count: @habit.count+1)
    render :result
  end

  def minus
    @habit.update(count: @habit.count-1)
    render :result
  end

  private
  def set_habit
    @habit = Habit.find(params[:id])
  end
end
