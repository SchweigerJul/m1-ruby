class Expense < ApplicationRecord
belongs_to :limit, optional: true
end
