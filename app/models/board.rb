class Board < ApplicationRecord
  belongs_to :company
  belongs_to :owner
end
