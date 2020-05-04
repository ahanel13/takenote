class Course < ApplicationRecord
    belongs_to :school, foreign_key: :school_id
    has_many :notes
end
