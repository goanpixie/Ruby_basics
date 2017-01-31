json.extract! builder, :id, :first_name, :last_name, :email, :password, :created_at, :updated_at
json.url builder_url(builder, format: :json)