class Order < ApplicationRecord
    attr_accessor :cake_size_needs_validation
    attr_accessor :cake_flavor_needs_validation
    attr_accessor :cake_filling_needs_validation
    attr_accessor :cake_style_needs_validation
    attr_accessor :cake_drip_needs_validation
    attr_accessor :cake_decoration_needs_validation
    attr_accessor :cake_decoration_color_needs_validation
    attr_accessor :name_needs_validation
    attr_accessor :telephone_needs_validation
    attr_accessor :email_needs_validation

    validates :cake_size, presence: true, if: -> {cake_size_needs_validation}
    validates :cake_flavor, presence: true, if: -> {cake_flavor_needs_validation}
    validates :cake_filling, presence: true, if: -> {cake_filling_needs_validation}
    validates :cake_style, presence: true, if: -> {cake_style_needs_validation}
    validates :cake_drip, presence: true, if: -> {cake_drip_needs_validation}
    validates :cake_decoration, presence: true, if: -> {cake_decoration_needs_validation}
    validates :cake_decoration_color, presence: true, if: -> {cake_decoration_color_needs_validation}
    validates :name, presence: true, if: -> {name_needs_validation}
    validates :telephone, presence: true, if: -> {telephone_needs_validation}
    validates :email, presence: true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, if: -> {email_needs_validation}

end
