class AddColumnTripIdToTrails < ActiveRecord::Migration[5.1]
  def change
    add_reference :trails, :trip, foreing_key: true
  end
end
