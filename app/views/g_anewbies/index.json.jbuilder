json.array!(@g_anewbies) do |g_anewby|
  json.extract! g_anewby, :name, :email
  json.url g_anewby_url(g_anewby, format: :json)
end