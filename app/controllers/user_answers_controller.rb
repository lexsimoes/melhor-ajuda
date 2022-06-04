class UserAnswersController < ApplicationController

  skip_before_action :authenticate_user!

  def create
    @user_answers = UserAnswer.new(user_answer_params)
    if @user_answers.save
      redirect_to therapists_path, notice: "Answers saved"
    else
      redirect_to questions_path
    end
  end

  def new
    # @user_answers =
  end
  private

  def user_answer_params
    params.require(:user_answer).permit(:email, :question_id, :answers, :alternative_id)
  end
end
