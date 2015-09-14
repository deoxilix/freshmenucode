class Freshmenu < ActiveRecord::Base
	validates :orientate, presence: true, length: { minimum: 3 }
end
