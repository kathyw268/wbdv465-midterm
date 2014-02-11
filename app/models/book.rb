class Book < ActiveRecord::Base

  validates :title,     presence: true

  validates :author,    presence: true,
                        length: {minimum: 2}
  validates :summary,   presence: true,
                        length: {minimum: 2}
  validates :isbn,     presence: true,
                       length: {is: 10}
end
