class AlternativesController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    @alternative = Alternative.new
  end

  def create
    @alternative = Alternative.new(alternative_params)
    @alternative.question = @alternative
    #@alternative.email = email
    if @alternative.save
      redirect_to therapist_path(@therapist), notice: "Answers saved"
    else
      redirect_to questions_path
    end
  end

  private

  def alternative_params
    params.require(:alternative).permit(:description)
  end
end
