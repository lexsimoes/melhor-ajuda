class TherapistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @therapists = Therapist.all
  end
end
