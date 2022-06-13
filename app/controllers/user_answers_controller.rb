class UserAnswersController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    @user_answer = UserAnswer.new
  end

  def create
    if params.key?("1") && params.key?("2") && params.key?("3") && params.key?("4") && params.key?("5")# && params["user_answer"]["email"].gsub(/\A.*@.*\.com\z/)
      User.create(email: params["user_answer"]["email"], password: params["user_answer"]["user_p"])
      UserAnswer.create(user_id: User.find_by_email(params["user_answer"]["email"]).id, question_id: 1, alternative_id: params["1"])
      UserAnswer.create(user_id: User.find_by_email(params["user_answer"]["email"]).id, question_id: 2, alternative_id: params["2"])
      UserAnswer.create(user_id: User.find_by_email(params["user_answer"]["email"]).id, question_id: 3, alternative_id: params["3"])
      UserAnswer.create(user_id: User.find_by_email(params["user_answer"]["email"]).id, question_id: 4, alternative_id: params["4"])
      UserAnswer.create(user_id: User.find_by_email(params["user_answer"]["email"]).id, question_id: 5, alternative_id: params["5"])

      alternative_ids = UserAnswer.where(user_id: User.find_by_email(params["user_answer"]["email"]).id).pluck(:alternative_id)
      specialty_ids = []
      alternative_ids.map do |alternative|
        specialty_ids << Alternative.find(alternative.to_i).specialty_id
      end
      specialty_id = specialty_ids.tally.sort_by {|specialty, value| value}
      match = specialty_id.last.first

      redirect_to therapist_path(id: match), notice: "Respostas salvas com sucesso"
    else
      redirect_to questions_path, notice: "Por favor, selecione uma alternativa para cada questão."
    end

  end
  private

  def user_answer_params
    params.require(:user_answer).permit(:email, :answers, :alternative_id, :user_p)
  end

  def select_all_answers

  end

  def valid_email

  end
end
