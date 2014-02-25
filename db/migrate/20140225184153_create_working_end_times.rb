class CreateWorkingEndTimes < ActiveRecord::Migration
  def change
    create_table :working_end_times do |t|
      t.integer :client_id
      t.time :monday, :default => "19:00:00"
      t.time :tuesday, :default => "19:00:00"
      t.time :wednesday, :default => "19:00:00"
      t.time :thursday, :default => "19:00:00" 
      t.time :friday, :default => "19:00:00"
      t.time :satruday, :default => "19:00:00"
      t.time :sunday, :default => "19:00:00"

      t.timestamps
    end
  end
end
