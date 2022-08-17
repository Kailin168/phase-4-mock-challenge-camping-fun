class Signup < ApplicationRecord
belongs_to :camper
belongs_to :activity

validates :time, numericality: { less_than_or_equal_to: 0, greater_than_or_equal_to: 23 }
# validates :time, numericality: { in: 0..23 }

end
