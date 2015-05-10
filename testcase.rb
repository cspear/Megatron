# testcase
#
# C-Primer file
# A-Request file
# B-Verify file
# D-Verify file
# affiliate version
# mso version


class Testcase(arguments, number, mso, aff, aRequest, bVerify, cPrimer, dVerify, protocol)

	MSO = [4.1, 4.3]
	AFF = [4.1, 4.3]


	def initialize(aRequest, bVerify, cPrimer, dVerify, mso, aff)
		raise "MSO version #{mso} is invalid" if !MSO.include?(mso)
		raise "AFFILIATE version #{aff} is invalid" if !MSO.include?(aff)

		@mso = mso  					# MSO version
		@aff = aff   					# Affiliate version
		@aRequest     = aRequest		# file path
		@bVerify      = bVerify			# file path
		@cPrimer	  = cPrimer			# file path
		@dVerify	  = dVerify			# file path
		@protocol 	  = protocol		# 200 or 500 protocol response
		@queryoffer	  = queryoffer  	# am I queryoffer request


		# ?? move get trackingID (or use dummy value) here & update 
		prep_aRequest

	end

	def file_exist?
		#check to see specific file exists
	end

	def file_of_right_format?

	end

	def prep_aRequest
		if queryoffer == false
			if mso == 4.1
				#send request, wait for response.  
				#pull trackingID & return value
			elsif mso == 4.3
				#send request, wait for response.  
				#pull trackingID & return value
			end
		else
			if mso == 4.1

			elsif mso == 4.3

			end
		end
	end	

	def insert_TrackingID(A-Request)

	end

	def pass_test?
		# send primer to opt.optimusprime
		# wait for 200
		# send aRequest
		# save aResponse & compare to dVerify
		# get bRequest from Optimus using opt.optimusprime
		# save bRequest & compare to bVerify
		# pass or fail
	end

	def ifLiveMSO  # LATER
		#don't prime and ignore changes in the trackingid?
		#don't send a request for testing query offers
		#don't send a request for testing schedule install
		#insert customer name/id depending on mso.
	end

end
