class Question < ActiveRecord::Base
belongs_to :user

validates :description, presence:true, uniqueness:true

end