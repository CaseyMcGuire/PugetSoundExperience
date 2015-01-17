class User < ActiveRecord::Base
  include ActiveModel::Validations

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :name, :presence => true, :length => { :maximum => 30 }
  validates :date, :presence => true, :format => /(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.]\d\d/
  validates :phone, :presence => true
end
