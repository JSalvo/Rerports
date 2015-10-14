json.array!(@reports) do |report|
  json.extract! report, :id, :report_date, :hour, :hour_trip, :billed, :customer_id
  json.url report_url(report, format: :json)
end
