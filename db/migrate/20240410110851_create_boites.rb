class CreateBoites < ActiveRecord::Migration[7.1]
  def change
    create_table :boites do |t|
      t.string :nom

      t.timestamps
    end
  end
end
