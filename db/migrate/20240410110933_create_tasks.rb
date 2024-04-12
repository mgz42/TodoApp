class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :done, default: false
      t.references :boite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
