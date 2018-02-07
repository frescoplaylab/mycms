class StudentEdit < ApplicationRecord
	belongs_to :admin_user
	belongs_to :student
end
