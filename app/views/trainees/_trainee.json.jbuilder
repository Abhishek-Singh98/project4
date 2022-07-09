json.extract! trainee, :id, :name, :email, :city, :contact, :description, :created_at, :updated_at
json.url trainee_url(trainee, format: :json)
