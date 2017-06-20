namespace :bot_setup do
  desc 'Create get started button'
  task get_started_button_create: :environment do
    Facebook::Messenger::Thread.set({
      setting_type: 'call_to_actions',
      thread_state: 'new_thread',
      call_to_actions: [
        {
          payload: 'SETUP_BOT'
        }
      ]
    }, access_token: ENV['ACCESS_TOKEN'])

    Rails.logger.info 'Get started button has been successfully set'
  end
# curl -X POST -H "Content-Type: application/json" -d '{
#   "setting_type":"call_to_actions",
#   "thread_state":"existing_thread",
#   "call_to_actions":[
#     {
#           "type": "postback",
#           "title": "Reset settings",
#           "payload": "RESET"
#     }
#   ]
# }' "https://graph.facebook.com/v2.6/me/thread_settings?access_token=EAACHqFBZAg4sBAEdzZC4Xm8ZA0Q3C0hFS5nps349pJEEcJctH61y8PtcvXqQYxOo6yFlweE913PD5NycDvS2iFnZBLWVpXqZAKkmGIX53VVBo7dsvfnH4YW9wEyS7kH895mZA19F9UEz3oUmfhYZAjxfP2QhC7C9un4nwmz5UZC6pS7kvlI7sKHw"

# curl -X POST -H "Content-Type: application/json" -d '{
#   "setting_type":"greeting",
#   "greeting":{
#     "text":"Welcome madafakas."
#   }
# }' "https://graph.facebook.com/v2.6/me/thread_settings?access_token=EAACHqFBZAg4sBAEdzZC4Xm8ZA0Q3C0hFS5nps349pJEEcJctH61y8PtcvXqQYxOo6yFlweE913PD5NycDvS2iFnZBLWVpXqZAKkmGIX53VVBo7dsvfnH4YW9wEyS7kH895mZA19F9UEz3oUmfhYZAjxfP2QhC7C9un4nwmz5UZC6pS7kvlI7sKHw"

  desc 'Create persistent menu'
  task persistent_menu_create: :environment do
    Facebook::Messenger::Thread.set({
      setting_type: 'call_to_actions',
      thread_state: 'existing_thread',
      call_to_actions: [
        {
          type: 'postback',
          title: 'Reset settings',
          payload: 'RESET'
        }
      ]
    }, access_token: ENV['ACCESS_TOKEN'])
  end
end
