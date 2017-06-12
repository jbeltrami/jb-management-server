# frozen_string_literal: true

class Client < ApplicationRecord
  # one-to-many
  belongs_to :individual_provider, class_name: 'User', foreign_key: 'user_id'

  # many-to-many
  has_many :services, dependent: :destroy
end
