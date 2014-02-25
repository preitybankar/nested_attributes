json.array!(@working_start_times) do |working_start_time|
  json.extract! working_start_time, :id, :client_id, :monday, :tuesday, :wednesday, :friday, :satruday, :sunday
  json.url working_start_time_url(working_start_time, format: :json)
end
