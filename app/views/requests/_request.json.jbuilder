json.extract! request, :id, :noOfDonors, :bloodGroup, :city, :email, :created_at, :updated_at
json.url request_url(request, format: :json)
