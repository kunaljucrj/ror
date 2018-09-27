json.extract! donor, :id, :name, :email, :phoneNo, :gender, :age, :city, :bloodGroup, :lastDonateDate, :created_at, :updated_at
json.url donor_url(donor, format: :json)
