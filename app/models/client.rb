# frozen_string_literal: true

class Client < ApplicationRecord
  # one-to-many
  belongs_to :individual_provider, class_name: 'User', foreign_key: 'user_id'

  # many-to-many
  has_many :services, dependent: :destroy

  # validations
  validates :first_name, presence: true
  validates :family_name, presence: true
  validates :born_on, presence: true
  validates :email, presence: true, uniqueness: { scope: :user_id }
end
