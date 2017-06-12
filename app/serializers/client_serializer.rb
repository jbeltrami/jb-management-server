class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :family_name, :born_on, :email, :user_id
end
