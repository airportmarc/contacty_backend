require 'twilio-ruby'

class MakeactionController < ApplicationController


  def act
    puts params
    to = params['sendTo']
    message = params['message']

    #  set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']
    @client.api.account.messages.create(
      from: '+6477979487',
      to: to,
      body: message
    )

  end

  end