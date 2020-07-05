json.extract! appointment, :id, :description, :appointment, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
