require 'rails_helper'

describe Mechanic, type: :model do 
    describe 'realtionships' do 
        it {should have_many :rides}
    end
end