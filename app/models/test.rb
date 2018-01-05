class Test < ApplicationRecord
	validates :fname ,:phno,:email,presence:true
	
	validates :phno, inclusion: { in: 0..10000000,message: "is not valid mobile number" }
end
