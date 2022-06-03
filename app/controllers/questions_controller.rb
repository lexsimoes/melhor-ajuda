class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @questions = Question.all
    @user_answer = UserAnswer.new
  end
end
