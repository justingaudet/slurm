json.array!(@orders) do |order|
  json.extract! order, :id, :name, :amount
  json.url order_url(order, format: :json)
end
