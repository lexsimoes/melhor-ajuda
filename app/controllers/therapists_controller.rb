class TherapistsController < ApplicationController

  skip_before_action :authenticate_user!

  def show
    @therapist = Therapist.find(params[:id])
    @day_date = User.last.date.day
    @month_date = User.last.date.month
    @year_date = User.last.date.year
    @time =  User.last.time
    @second_time_option =  User.last.second_time_option.hour

    @timepicker = [@time, @second_time_option].first
  end

  def index
  end

  def user_answer_params
    params.require(:user_answer).permit(:date, :time, :second_time_option, :email, :id)
  end

end
