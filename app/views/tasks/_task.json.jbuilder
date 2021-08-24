json.extract! task, :id, :name, :description, :assign_to, :created_by, :created_at, :updated_at
json.url task_url(task, format: :json)
