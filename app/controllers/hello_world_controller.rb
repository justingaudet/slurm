# app/controllers/hello_world_controller.rb

require 'pusher'

Pusher.app_id = '110230'
Pusher.key = '63a00516bd7a894567e2'
Pusher.secret = 'fb24967344b1999a78e4'

class HelloWorldController < ApplicationController
  def hello_world
    Pusher['test_channel'].trigger('my_event', {
       message: 'hello world'
    })
  end
end