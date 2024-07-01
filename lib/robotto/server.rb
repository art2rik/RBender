# frozen_string_literal: true

module Robotto
  class Server
    class << self
      def instance
        @instance
      end

      def instance=(instance)
        @instance = instance
      end
    end

    def initialize(**opts)
      @pool = Pool.new(**opts)
      @bot_token = Support::Config.get('token')
      Server.instance = self
    end

    def start!
      puts "Bot is loading...".green
      Telegram::Bot::Client.run(@bot_token) do |bot|
        @pool.api = bot.api
        @pool.spawn!
        bot.listen { |message| @pool << Robotto::Types::Message.new(message.as_json) }
      end
    end

    def stop!
      @pool.stop!
      puts "Server stopped...".yellow.bold
    end

    at_exit { instance&.stop! }
  end
end
