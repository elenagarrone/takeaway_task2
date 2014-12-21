require 'rubygems'
require 'twilio-ruby'
require './lib/tokens'

module Message

  attr_reader :sent

  def intialize
	@sent
  end

  def sent?
	@sent = false
  end

  def send_sms(customer)
    account_sid = Tokens::ACCOUNT_SID
    auth_token = Tokens::AUTH_TOKEN
	  @client = Twilio::REST::Client.new account_sid, auth_token
	  message = @client.account.messages.create(:body => "#{ customer.name },\nThanks for your order. It will be delivered in around 30 minutes.",
        :to => customer.phone,
        :from => "+441926800074")
      puts message.sid
      @sent = true
  end

end
