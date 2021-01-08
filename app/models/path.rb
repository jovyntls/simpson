class Path < ApplicationRecord
  validates :mod1, uniqueness: { scope: %i[mod2] }
end
