class Note < ApplicationRecord
    belongs_to :user
    belongs_to :course
    has_rich_text :text
end
