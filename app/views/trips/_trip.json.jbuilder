json.extract! trip, :id, :title, :summary, :created_at, :updated_at
json.url trip_url(trip, format: :json)
