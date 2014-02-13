class Book < ActiveRecord::Base

  acts_as_taggable_on :tags
  letsrate_rateable "rating"

  validates :title,     presence: true

  validates :author,    presence: true,
                        length: {minimum: 2}
  validates :summary,   presence: true,
                        length: {minimum: 2}
  validates :isbn,     presence: true,
                       length: {is: 10}
end
