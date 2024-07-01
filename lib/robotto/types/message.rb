# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Message < Robotto::Types::Base
       attribute :message_id, Integer, required: true
       attribute :message_thread_id, Integer
       attribute :from, User
       attribute :sender_chat, Chat
       attribute :date, Integer, required: true
       attribute :chat, Chat, required: true
       attribute :forward_from, User
       attribute :forward_from_chat, Chat
       attribute :forward_from_message_id, Integer
       attribute :forward_signature, String
       attribute :forward_sender_name, String
       attribute :forward_date, Integer
       attribute :is_topic_message, [TrueClass, FalseClass]
       attribute :is_automatic_forward, [TrueClass, FalseClass]
       attribute :reply_to_message, Message
       attribute :via_bot, User
       attribute :edit_date, Integer
       attribute :has_protected_content, [TrueClass, FalseClass]
       attribute :media_group_id, String
       attribute :author_signature, String
       attribute :text, String
       attribute :entities, Array
       attribute :animation, Animation
       attribute :audio, Audio
       attribute :document, Document
       attribute :photo, Array
       attribute :sticker, Sticker
       attribute :video, Video
       attribute :video_note, VideoNote
       attribute :voice, Voice
       attribute :caption, String
       attribute :caption_entities, Array
       attribute :has_media_spoiler, [TrueClass, FalseClass]
       attribute :contact, Contact
       attribute :dice, Dice
       attribute :game, Game
       attribute :poll, Poll
       attribute :venue, Venue
       attribute :location, Location
       attribute :new_chat_members, Array
       attribute :left_chat_member, User
       attribute :new_chat_title, String
       attribute :new_chat_photo, Array
       attribute :delete_chat_photo, [TrueClass, FalseClass]
       attribute :group_chat_created, [TrueClass, FalseClass]
       attribute :supergroup_chat_created, [TrueClass, FalseClass]
       attribute :channel_chat_created, [TrueClass, FalseClass]
       attribute :message_auto_delete_timer_changed, MessageAutoDeleteTimerChanged
       attribute :migrate_to_chat_id, Integer
       attribute :migrate_from_chat_id, Integer
       attribute :pinned_message, Message
       attribute :invoice, Invoice
       attribute :successful_payment, SuccessfulPayment
       attribute :user_shared, UserShared
       attribute :chat_shared, ChatShared
       attribute :connected_website, String
       attribute :write_access_allowed, WriteAccessAllowed
       attribute :passport_data, PassportData
       attribute :proximity_alert_triggered, ProximityAlertTriggered
       attribute :forum_topic_created, ForumTopicCreated
       attribute :forum_topic_edited, ForumTopicEdited
       attribute :forum_topic_closed, ForumTopicClosed
       attribute :forum_topic_reopened, ForumTopicReopened
       attribute :general_forum_topic_hidden, GeneralForumTopicHidden
       attribute :general_forum_topic_unhidden, GeneralForumTopicUnhidden
       attribute :video_chat_scheduled, VideoChatScheduled
       attribute :video_chat_started, VideoChatStarted
       attribute :video_chat_ended, VideoChatEnded
       attribute :video_chat_participants_invited, VideoChatParticipantsInvited
       attribute :web_app_data, WebAppData
       attribute :reply_markup, InlineKeyboardMarkup

       alias_method :to_s, :text
    end
  end
end
