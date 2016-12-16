class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :location
      t.integer :container_amount

      t.timestamps
    end
  end
end
