class Contact
  include ActiveModel::Model
  attr_accessor :name, :email, :phone, :message
  validates :name, :email, :phone, :message, presence: true
end
