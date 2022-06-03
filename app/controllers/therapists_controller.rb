class TherapistsController < ApplicationController
skip_before_action :authenticate_user!

def show
@therapist = Therapist.find(params[:id])
end

end
