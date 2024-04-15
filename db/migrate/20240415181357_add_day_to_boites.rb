class AddDayToBoites < ActiveRecord::Migration[7.1]
  def change
    add_column :boites, :day, :datetime
  end
end
