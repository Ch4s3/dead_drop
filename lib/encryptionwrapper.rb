class EncryptionWrapper
	
	def before_save(record)
		encrypt(record.message)
		encrypt(record.email)
	end

	def load_email(email)
		email = decrypt(email)
	end

	def load_message(message)
		message = decrypt(message)
	end

private
	def encrypt(value)
		SymmetricEncryption.encrypt(value)
	end

	def decrypt(value)
	  SymmetricEncryption.decrypt(value)
	end
end