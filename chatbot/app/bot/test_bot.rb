
# Bot.deliver({
#   recipient: {
#     id: '1239138789528057'
#   },
#   message: {
#     text: 'Human?'
#   }
# }, access_token: ENV['ACCESS_TOKEN'])


# Bot.on :postback do |postback|
#   postback.sender    # => { 'id' => '1008372609250235' }
#   postback.recipient # => { 'id' => '2015573629214912' }
#   postback.sent_at   # => 2016-04-22 21:30:36 +0200
#   postback.payload   # => 'EXTERMINATE'

#   if postback.payload == 'EXTERMINATE'
#     puts "Human #{postback.recipient} marked for extermination"
#   end
# end

# Bot.on :message do |message|
# message.typing_on
# message.reply(
#   attachment: {
#     type: 'template',
#     payload: {
#       template_type: 'button',
#       text: 'Human, do you like me?',
#       buttons: [
#         { type: 'postback', title: 'Yes', payload: 'HARMLESS' },
#         { type: 'postback', title: 'No', payload: 'EXTERMINATE' }
#       ]
#     }
#   }
# )


#   message.reply(
#   attachment: {
#     type: 'image',
#     payload: {
#       url: 'http://media.ticketmaster.eu/netherlands/feature/treinretour/lowlands/images/header_image_lowlands.jpg'
#     }
#   }
# )
#   message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
#   message.sender      # => { 'id' => '1008372609250235' }
#   message.seq         # => 73
#   message.sent_at     # => 2016-04-22 21:30:36 +0200
#   message.text        # => 'Hello, bot!'
#   message.attachments # => [ { 'type' => 'image', 'payload' => { 'url' => 'https://www.example.com/1.jpg' } } ]

# if message.quick_replies && message.quick_replies.match('yeah')
#     message.reply(text: 'Thank you I will notify you very soon, have a good and productive day!')
#   end

# message.reply(
#         text: 'Welcome at the Marriot Bellboy',
#         text: 'We are here for al the questions you have on any given moment of the day',
#         text: 'Can we ask you 3 quick questions?',
#         quick_replies: [
#             {
#                 content_type: 'text',
#                 title: 'Yeah, sure',
#                 payload: 'yes'
#             },
#             {
#                 content_type: 'text',
#                 title: 'No rather not',
#                 payload: 'no'
#             }
#         ])

#   if message.text == 'ruby'
#     message.reply(text: 'what about this sebas?')
#   else
#     message.reply(text: 'hello goodday')
#   end



#   message.reply(text: 'Welcome at the AMS-Hotel')
#   message.reply(text: 'My name is Ederik, and you can ask me anything here about our hotel services')
#   message.reply(text: 'Do you have your WIFI set up already?')
#   message.reply(
#   text: 'Human, who is your favorite bot?',
#   quick_replies: [
#     {
#       content_type: 'text',
#       title: 'You are!',
#       payload: 'HARMLESS'
#     }
#   ]
# )

#   case postback.payload
#   when 'You are'
#   postback.reply(text: 'Wauw thnx man! I can stay living then')
#   end

# end


# Bot.on :postback do |postback|
#   case postback.payload
#     when 'SETUP_BOT'
#       postback.reply(
#         text: 'Hello, I am your personal lifelog assistant, let me help you with setup procedure',
#         quick_replies: [
#           {
#             content_type: 'text',
#             title: 'I want to set you up',
#             payload: 'setup_started'
#           }
#         ]

#         )
#     when 'RESET'
#       # TODO: we will implement reset functionality soon
#       postback.reply(text: 'Reset has been completed')
#     else
#       Rails.logger.warn('Unhandled postback')
#   end
# end

# Bot.on :message do |message|
#   incoming =  message.messaging['message']['text']
#     if message.quick_reply && message.quick_reply.match('yes')
#     message.reply(text: 'Thank you I will notify you very soon, have a good and productive day!')
#   end

#   if message.quick_reply && message.quick_reply == 'setup_started'
#     User.find_or_create_by(facebook_id: message.sender['id'])

#     message.reply(
#         text: 'Welcome at the Marriot Bellboy',
#         text: 'We are here for al the questions you have on any given moment of the day',
#         text: 'Can we ask you 3 quick questions?',
#         quick_replies: [
#             {
#                 content_type: 'text',
#                 title: 'Yeah, sure',
#                 payload: 'yes'
#             },
#             {
#                 content_type: 'text',
#                 title: 'No rather not',
#                 payload: 'no'
#             }
#         ])
#   end
# end
