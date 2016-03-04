json.array!(@first_models) do |first_model|
  json.extract! first_model, :id, :url
  json.url first_model_url(first_model, format: :json)
end
