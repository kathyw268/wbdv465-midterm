class Book < ActiveRecord::Base
  has_many  :users 
  belongs_to :read_by, class_name:"User"
  validates :title,     presence: true

  validates :author,    presence: true,
                        length: {minimum: 2}
  validates :summary,   presence: true,
                        length: {minimum: 2}
  validates :ISBN,     presence: true,
                       length: {is: 10}
end
