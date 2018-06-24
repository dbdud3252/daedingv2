class Submit < ApplicationRecord
    belongs_to :user
    belongs_to :type
    belongs_to :smalltype
end
