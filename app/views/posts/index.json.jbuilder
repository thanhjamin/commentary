json.array!(@posts) do |post|
  json.extract! post, :id, :post, :full_name, :email
  json.url post_url(post, format: :json)
end
