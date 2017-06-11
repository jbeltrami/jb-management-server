# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :user
  belongs_to :client

  # validations
  validates :description, presence: true
  validates :price, presence: true
  validates :service_date, presence: true
end
