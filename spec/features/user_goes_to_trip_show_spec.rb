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

  it 'Should go the trip show and see trip info' do
    visit trip_path(@trip_1)
    expect(page).to have_content(@trip_1.name)
    expect(page).to have_content(@trail_1.name)
    expect(page).to have_content(@trail_2.name)
    expect(page).to have_content(@trail_1.address)
    expect(page).to have_content(@trail_1.address)
    expect(page).to have_content(@trail_2.length)
    expect(page).to have_content(@trail_2.length)

    expect(page).to_not have_content(@trail_4.name)
    expect(page).to_not have_content(@trail_3.name)
  end
end
