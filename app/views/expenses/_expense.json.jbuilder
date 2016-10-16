json.extract! expense, :id, :store, :description, :date, :value, :created_at, :updated_at
json.url expense_url(expense, format: :json)