# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :user, inverse_of: :services
  belongs_to :client, inverse_of: :services

  # validations
  validates :description, presence: true
  validates :price, presence: true
  validates :service_date, presence: true
end
