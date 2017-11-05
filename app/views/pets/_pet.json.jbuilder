json.extract! pet, :id, :name, :race, :age, :size, :created_at, :updated_at
json.url pet_url(pet, format: :json)
