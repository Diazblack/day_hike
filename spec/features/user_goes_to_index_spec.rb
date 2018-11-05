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

  it 'if i click on the trip name go to trip show page ' do
    visit trips_path

    click_on "#{@trip_1.name}"

    expect(current_path).to eq(trip_path(@trip_1))

  end
end
