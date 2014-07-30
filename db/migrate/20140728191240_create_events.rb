class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
