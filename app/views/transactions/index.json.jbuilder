json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :description, :amount, :debit
  json.url transaction_url(transaction, format: :json)
end
