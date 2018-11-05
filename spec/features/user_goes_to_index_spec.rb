require 'rails_helper'

describe  'User goes to hiking trips index ' do
  before do
    @trail_1, @trail_2, @trail_3, @trail_4 = create_list(:trail, 4)
  end

  it 'And see a list of all trips ' do
    visit trails_path

    expect(page).to have_content(@trail_1.name)
    expect(page).to have_content(@trail_1.length)
    expect(page).to have_content(@trail_1.address)
    expect(page).to have_content(@trail_2.name)
    expect(page).to have_content(@trail_2.length)
    expect(page).to have_content(@trail_2.address)
    expect(page).to have_content(@trail_3.name)
    expect(page).to have_content(@trail_3.length)
    expect(page).to have_content(@trail_3.address)
    expect(page).to have_content(@trail_4.name)
    expect(page).to have_content(@trail_4.length)
    expect(page).to have_content(@trail_4.address)
  end
end
