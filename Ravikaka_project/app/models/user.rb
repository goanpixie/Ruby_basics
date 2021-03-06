class User < ActiveRecord::Base
  has_secure_password

  has_many :events

# ===================email_validation====================
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i 
  
  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }
# ======================================================

  validates :name, :presence =>true

  validates :password, :presence => true

  validates :password, length: {minimum:8}
end
