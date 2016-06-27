json.array!(@pundits) do |pundit|
  json.extract! pundit, :id, :name
  json.url pundit_url(pundit, format: :json)
end
