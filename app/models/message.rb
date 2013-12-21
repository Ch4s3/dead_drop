
class Message < ActiveRecord::Base
	include EncryptionWrapper
	
	attr_encrypted :email, :message
	attr_encrypted :string, :random_iv => true
	attr_encrypted :long_string, :random_iv => true, :compress => true

	before_save EncryptionWrapper.new(message)

	validates :encrypted_email, :symmetric_encryption => true
  	validates :encrypted_message, :symmetric_encryption => true

	has_secure_password


private
	def send_message
		MessageMailer.send_message(self.email, self.slug).deliver
	end
end
