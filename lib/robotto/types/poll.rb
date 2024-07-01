# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Poll < Robotto::Types::Base
       attribute :id, String, required: true
       attribute :question, String, required: true
       attribute :options, Array, required: true
       attribute :total_voter_count, Integer, required: true
       attribute :is_closed, [TrueClass, FalseClass], required: true
       attribute :is_anonymous, [TrueClass, FalseClass], required: true
       attribute :type, String, required: true
       attribute :allows_multiple_answers, [TrueClass, FalseClass], required: true
       attribute :correct_option_id, Integer
       attribute :explanation, String
       attribute :explanation_entities, Array
       attribute :open_period, Integer
       attribute :close_date, Integer
    end
  end
end
