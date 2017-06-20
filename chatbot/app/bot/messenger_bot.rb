require 'facebook/messenger'

include Facebook::Messenger

Bot.on :message do |message|
  message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
  message.sender      # => { 'id' => '1008372609250235' }
  message.seq         # => 73
  message.sent_at     # => 2016-04-22 21:30:36 +0200
  message.text        # => 'Hello, bot!'
  message.attachments # => [ { 'type' => 'image', 'payload' => { 'url' => 'https://www.example.com/1.jpg' } } ]

  message.reply(text: 'Hello, human!')
end
Bot.on :postback do |postback|
  case postback.payload
    when 'SETUP_BOT'
      postback.reply(text: 'Hello, I am your personal lifelog assistant, let me help you with setup procedure')
    when 'RESET'
      # TODO: we will implement reset functionality soon
      postback.reply(text: 'Reset has been completed')
    else
      Rails.logger.warn('Unhandled postback')
  end
end
