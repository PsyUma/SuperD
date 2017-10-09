json.extract! super_d_user, :id, :firstname, :lastname, :country, :phone, :email, :address, :created_at, :updated_at
json.url super_d_user_url(super_d_user, format: :json)
