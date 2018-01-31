require 'twilio-ruby'

class MakeactionController < ApplicationController


  def act
    puts params
    account_sid = 'ACa54ac17fc5643b3d965309d443c4cbd6'
    auth_token = 'fa232ffeb71619f2f15fd16126b5cb67'

# set up a client to talk to the Twilio REST API
#     @client = Twilio::REST::Client.new account_sid, auth_token
#     @client.api.account.messages.create(
#         from: '+6477979487',
#         to: '+16475466128',
#         body: 'Hey there!'
#     )
  end


end