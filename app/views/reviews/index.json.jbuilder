json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :body, :rating, :brewery
  json.url review_url(review, format: :json)
end
