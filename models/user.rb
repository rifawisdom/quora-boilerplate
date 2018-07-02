# require_relative '../../config/application'

class User < ActiveRecord::Base
has_secure_password
has_many :questions

validates :email, presence:true, uniqueness:true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/,
  message: "unvalid email" }

validates :password, presence:true

end
