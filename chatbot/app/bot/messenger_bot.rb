require 'facebook/messenger'

include Facebook::Messenger

Bot.on :message do |message|
message.typing_on
message.reply(text: 'simple text')
end

# ARRAY_MESSAGES = { welcome: "Welcome message",
#                    wifi: "The wifi password is RoomMate2012",
#                    gym_hours: "The gym hours are...",
#                    breakfast_hours: "The breakfast hours are...",
#                    dinner_hours: "The dinner hours are...",
#                    continue: "Can I help you with something else?",
#                    yes: "How can I help you?",
#                    no: "I will be here whenever you need me. Enjoy your stay!" }



# Bot.on :postback do |postback|
#   case postback.payload
#     when 'SETUP_BOT'
#       postback.reply(
#         text: "Welcome to the Room Mate Hotel. How can we help you?",
#         quick_replies: [
#           {
#             content_type: 'text',
#             title: 'wifi',
#             payload: 'wifi'
#           },
#           {
#             content_type: 'text',
#             title: 'gym hours',
#             payload: 'gym'
#           },
#           {
#             content_type: 'text',
#             title: 'dinner hours',
#             payload: 'dinner'
#           },
#           {
#             content_type: 'text',
#             title: 'breakfast hours',
#             payload: 'breakfast'
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
#   incoming =  message.text
#     if message.quick_reply && message.quick_reply.match('wifi')
#     message.reply(text: "wifi")
#     message.reply(
#       text: "continue",
#             quick_replies: [
#           {
#               content_type: 'text',
#               title: 'Yeah',
#               payload: 'yes'
#           },
#           {
#               content_type: 'text',
#               title: 'No',
#               payload: 'no'
#           }
#         ])
#     end
#     if message.quick_reply && message.quick_reply.match('gym')
#     message.reply(text: ARRAY_MESSAGES[:gym_hours])
#     message.reply(
#       text: ARRAY_MESSAGES[:continue],
#             quick_replies: [
#           {
#               content_type: 'text',
#               title: 'Yeah',
#               payload: 'yes'
#           },
#           {
#               content_type: 'text',
#               title: 'No',
#               payload: 'no'
#           }
#         ])
#     end
#     if message.quick_reply && message.quick_reply.match('dinner')
#     message.reply(text: ARRAY_MESSAGES[:dinner_hours])
#     message.reply(
#       text: ARRAY_MESSAGES[:continue],
#             quick_replies: [
#           {
#               content_type: 'text',
#               title: 'Yeah',
#               payload: 'yes'
#           },
#           {
#               content_type: 'text',
#               title: 'No',
#               payload: 'no'
#           }
#         ])
#     end
#     if message.quick_reply && message.quick_reply.match('breakfast')
#     message.reply(text: ARRAY_MESSAGES[:breakfast_hours])
#     message.reply(
#       text: ARRAY_MESSAGES[:continue],
#             quick_replies: [
#           {
#               content_type: 'text',
#               title: 'Yeah',
#               payload: 'yes'
#           },
#           {
#               content_type: 'text',
#               title: 'No',
#               payload: 'no'
#           }
#         ])
#     end
#     if message.quick_reply && message.quick_reply.match('yes')
#     message.reply(text: ARRAY_MESSAGES[:yes])
#     end
#     if message.quick_reply && message.quick_reply.match('breakfast')
#     message.reply(text: ARRAY_MESSAGES[:no])
#     end
#     message.reply(text: 'Can you type again wat you want')




















  # message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
  # message.sender      # => { 'id' => '1008372609250235' }
  # message.seq         # => 73
  # message.sent_at     # => 2016-04-22 21:30:36 +0200
  # message.text        # => 'Hello, bot!'
  # message.attachments # => [ { 'type' => 'image', 'payload' => { 'url' => 'https://www.example.com/1.jpg' } } ]
# message.reply(
#   text: 'Human, who is your favorite bot?',
#   quick_replies: [
#     {
#       content_type: 'text',
#       title: 'You are!',
#       payload: 'HARMLESS'
#     }
#   ]
# )

# # TODO
# 1. WELCOME MESSAGE
# message.reply(text: ARRAY_MESSAGES[:welcome])
# let_message("Bot", ARRAY_MESSAGES[:welcome])
# # 3. WIFI QUESTION
# answer(message.text)
# # 4. WIFI ANSWER (WITH WIFI WORD)
# message.reply(text: ARRAY_MESSAGES[:wifi])
# let_message("Bot", ARRAY_MESSAGES[:wifi])
# # 5. DIRECTLY QUESTION (IF ANDY CAN DO MORE FOR THE GUEST)
# message.reply(text: ARRAY_MESSAGES[:continue])
# let_message("Bot", ARRAY_MESSAGES[:continue])
# # 6. YEAH, ARE THERE ANY NICE RESTAURANTS IN THE AREA
# answer(message.text)
# # 7. OH, YEAH SOME REALLY NICE ONES => OPTIONS

# end

# def answer(input)
# let_message('User', input)
# end

# # def reply(input)
# # message.reply(text: ARRAY_MESSAGES[input])
# # let_message("Bot", ARRAY_MESSAGES[input])
# # end

# def let_message(from, content)
#   @let_message = Message.new(from: from, content: content)
#   @let_message.save
# end
