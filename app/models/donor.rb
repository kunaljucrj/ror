class Donor < ApplicationRecord

	validates :name, presence: { message: "must be given please" }
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
	validates :phoneNo, presence: { message: "must be given please" }, length: { is: 10 }
	validates :gender, presence: { message: "must be given please" }
	validates :age, presence: { message: "must be given please" },
					 :inclusion => { :in => 18..55 , message: " is not in eligibility range(18-55)"}
	validates :city, presence: { message: "must be given please" }
	validates :bloodGroup, presence: { message: "must be given please" }
	validates :lastDonateDate, presence: { message: "must be given please" }

end
