json.array!(@states) do |state|
  json.extract! state, :id, :name, :abrev
  json.url state_url(state, format: :json)
end
