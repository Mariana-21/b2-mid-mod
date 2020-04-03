class AmusementparksController < ApplicationController
    def index
        @amusementparks = AmusementPark.all
    end

end