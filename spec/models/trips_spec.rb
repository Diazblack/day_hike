require 'rails_helper'

describe Trip, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }

  end
  describe 'Instance Methods' do
    before do
      @trip_1 = create(:trip)
      @trip_2 = create(:trip)
      @trail_1 = create(:trail, trip: @trip_1)
      @trail_2 = create(:trail, trip: @trip_1)
      @trail_3 = create(:trail, trip: @trip_2)
      @trail_4 = create(:trail, trip: @trip_2)
    end

    it 'total length' do
      sum = @trail_1.length + @trail_2.length
      expect(@trip_1.total_length).to eq(sum)
    end

    it 'average length' do
      average = ((@trail_1.length.to_f + @trail_2.length.to_f) / 2) 
      expect(@trip_1.average_length).to eq(average)
    end
  end
end
