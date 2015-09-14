class Freshmenu < ActiveRecord::Base
	attr_accessor :cuisine, :orientate
	validates :orientate, presence: true, length: { minimum: 3 }

end