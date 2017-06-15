class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :description, :service_date, :price, :client, :user,
             :created_at
end
