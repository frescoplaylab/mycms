class AdminUser < ApplicationRecord

	has_and_belongs_to_many :categories
	has_many :student_edits
end
