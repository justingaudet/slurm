require 'pusher'

Pusher.app_id = '110230'
Pusher.key = '63a00516bd7a894567e2'
Pusher.secret = 'fb24967344b1999a78e4'

class WelcomeController < ApplicationController
  def index
    Pusher['test_channel'].trigger('my_event', {message: 'hello world'})
  end
end
