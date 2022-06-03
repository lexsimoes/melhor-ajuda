class UserAnswersController < ApplicationController

  def create
    @user_answers = UserAnswer.new(user_answer_params)
    redirect_to questions_path
  end

  def new
    # @user_answers =
  end
  private

  def user_answer_params
    params.require(:user_answer).permit(:email, :question_id, :answers)
  end
end
