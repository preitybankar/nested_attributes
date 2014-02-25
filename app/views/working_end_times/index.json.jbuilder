json.array!(@working_end_times) do |working_end_time|
  json.extract! working_end_time, :id, :client_id, :monday, :tuesday, :wednesday, :friday, :satruday, :sunday
  json.url working_end_time_url(working_end_time, format: :json)
end
