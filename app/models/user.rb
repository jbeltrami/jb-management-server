# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  # one-to-many
  has_many :individual_clients, class_name: 'Client'

  # many-to-many
  has_many :clients
  has_many :services
end
