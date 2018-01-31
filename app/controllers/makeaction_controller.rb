require 'twilio-ruby'

class MakeactionController < ApplicationController


  def act
    puts params


# set up a client to talk to the Twilio REST API
#     @client = Twilio::REST::Client.new account_sid, auth_token
#     @client.api.account.messages.create(
#         from: '+6477979487',
#         to: '+16475466128',
#         body: 'Hey there!'
#     )
  end


end