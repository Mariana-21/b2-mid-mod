class AmusementparksController < ApplicationController
    def index
        @amusementparks = AmusementPark.all
    end

    def show
        @amusementparks = AmusementPark.all
    end

end