class Trip < ApplicationRecord
	has_many :days, dependent: :destroy
end
