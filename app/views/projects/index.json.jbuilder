json.array!(@projects) do |project|
  json.extract! project, :id, :category, :creator, :description, :zone, :name, :target, :start_date, :end_date
  json.url project_url(project, format: :json)
end
