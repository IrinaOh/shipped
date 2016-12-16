class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :destination
      t.string :origin
      t.decimal :cost
      t.integer :container_amount

      t.timestamps
    end
  end
end
