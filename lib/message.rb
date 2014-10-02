require 'rubygems'
require 'twilio-ruby'
require 'customer'

module Message

	attr_reader :sent

	def intialize
		@sent 
	end

	def sent?
		@sent = false
	end

	def send_sms(customer)
	 
		# Get your Account Sid and Auth Token from twilio.com/user/account
		account_sid = 'AC671d4b14a8072a4be081cd64e9b94df6'
		auth_token = 'f145b5c6a1deb7c016228797e9546595'
		@client = Twilio::REST::Client.new account_sid, auth_token
			 
		message = @client.account.messages.create(:body => "#{customer.name},\nThanks for your order. It will be delivered in around 30 minutes.",
		    :to => customer.phone,     # Replace with your phone number
		    :from => "+441926800074")   # Replace with your Twilio number
		puts message.sid

		@sent = true

	end

end