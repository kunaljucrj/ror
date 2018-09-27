class Request < ApplicationRecord

	validates :noOfDonors, presence: true
    validates :bloodGroup, presence: true
    validates :city, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

end
