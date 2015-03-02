json.array!(@slinks) do |slink|
  json.extract! slink, :id, :url
  json.url slink_url(slink, format: :json)
end
