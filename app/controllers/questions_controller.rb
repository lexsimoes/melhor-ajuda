class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @questions = Question.all
    @user_answer = UserAnswer.new
    @alternatives = Alternative.all
    @question1 = Question.first
    @question2 = Question.second
    @question3 = Question.third
    @question4 = Question.fourth
    @question5 = Question.fifth
  end

end
