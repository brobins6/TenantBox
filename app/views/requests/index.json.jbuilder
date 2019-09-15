json.array!(@requests) do |request|
  json.extract! request, :id, :name, :email, :address, :option, :body
  json.url request_url(request, format: :json)
end
