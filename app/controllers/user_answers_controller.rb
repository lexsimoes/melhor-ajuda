class UserAnswersController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    @user_answer = UserAnswer.new
  end

  def create
    @user_answer = UserAnswer.new(user_answer_params)
    #@user_answer.email = email
    if @user_answer.save
      redirect_to therapist_path(@therapist), notice: "Answers saved"
    else
      redirect_to questions_path
    end
  end

  private

  def user_answer_params
    params.require(:user_answer).permit(:email, :question_id, :answers, :alternative_id)
  end
end
