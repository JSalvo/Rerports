json.array!(@customers) do |customer|
  json.extract! customer, :id, :company_name, :address, :cap, :city, :email, :cf, :piva, :hour_price
  json.url customer_url(customer, format: :json)
end
