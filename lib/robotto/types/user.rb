# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class User < Robotto::Types::Base
       attribute :id, Integer, required: true
       attribute :is_bot, [TrueClass, FalseClass], required: true
       attribute :first_name, String, required: true
       attribute :last_name, String
       attribute :username, String
       attribute :language_code, String
       attribute :is_premium, [TrueClass, FalseClass]
       attribute :added_to_attachment_menu, [TrueClass, FalseClass]
       attribute :can_join_groups, [TrueClass, FalseClass]
       attribute :can_read_all_group_messages, [TrueClass, FalseClass]
       attribute :supports_inline_queries, [TrueClass, FalseClass]
    end
  end
end
