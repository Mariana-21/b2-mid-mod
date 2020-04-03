class AmusementparksController < ApplicationController
    def index
        @amusementparks = AmusementPark.all
    end

    def show
        @park = AmusementPark.find(params[:park_id])
    end

end