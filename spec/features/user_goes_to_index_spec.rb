require 'rails_helper'

describe  'User goes to hiking trips index ' do
  before do
    @trip_1 = create(:trip)
    @trip_2 = create(:trip)
    @trail_1 = create(:trail, trip: @trip_1)
    @trail_2 = create(:trail, trip: @trip_1)
    @trail_3 = create(:trail, trip: @trip_2)
    @trail_4 = create(:trail, trip: @trip_2)  

  end

  it 'And see a list of all trips ' do
    visit trips_path

    expect(page).to have_content(@trip_1.name)
    expect(page).to have_content(@trip_2.name)
  end


end
