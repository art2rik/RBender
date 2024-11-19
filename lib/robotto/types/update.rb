# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Update < Robotto::Types::Base
       attribute :update_id, Integer, required: true
       attribute :message, Message
       attribute :edited_message, Message
       attribute :channel_post, Message
       attribute :edited_channel_post, Message
       attribute :inline_query, InlineQuery
       attribute :chosen_inline_result, ChosenInlineResult
       attribute :callback_query, CallbackQuery
       attribute :shipping_query, ShippingQuery
       attribute :pre_checkout_query, PreCheckoutQuery
       attribute :poll, Poll
       attribute :poll_answer, PollAnswer
       attribute :my_chat_member, ChatMemberUpdated
       attribute :chat_member, ChatMemberUpdated
       attribute :chat_join_request, ChatJoinRequest
    end
  end
end
