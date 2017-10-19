class Order < ApplicationRecord

validates :cake_size, presence: true
validates :cake_flavor, presence: true
validates :cake_filling, presence: true
validates :cake_style, presence: true
validates :cake_drip, presence: true
validates :cake_decoration, presence: true
validates :cake_decoration_color, presence: true
validates :name, presence: true
validates :telephone, presence: true
validates :email, presence: true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
