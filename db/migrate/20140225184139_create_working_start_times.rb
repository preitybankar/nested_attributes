class CreateWorkingStartTimes < ActiveRecord::Migration
  def change
    create_table :working_start_times do |t|
      t.integer :client_id
      t.time :monday, :default => "09:00:00"
      t.time :tuesday, :default => "09:00:00"
      t.time :wednesday, :default => "09:00:00"
      t.time :thursday, :default => "09:00:00"
      t.time :friday, :default => "09:00:00"
      t.time :satruday, :default => "09:00:00"
      t.time :sunday, :default => "09:00:00"

      t.timestamps
    end
  end
end
