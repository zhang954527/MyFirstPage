class GreetingsController < ApplicationController
  def hello
      @message = "Hello, how are you today?"
      @time = Time.now.strftime('%Y年%m月%d日 %H:%M:%S')
  end
end
