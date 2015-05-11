# testcase
#
# C-Primer file
# A-Request file
# B-Verify file
# D-Verify file
# affiliate version
# mso version


class Testcase

	MSO = [4.1, 4.3]
	AFF = [4.1, 4.3]


	def initialize(arguments, number, testvalues)
		@mso = testvalues['mso']# MSO version
		@aff = testvalues['aff']# Affiliate version
		@aRequest = testvalues['aRequest']# file path
		@bVerify = testvalues['bVerify']# file path
		@cPrimer = testvalues['cPrimer']# file path
		@dVerify = testvalues['dVerify']# file path
		@protocol = testvalues['protocol']# 200 or 500 protocol response
		@queryoffer = testvalues['queryoffer']# am I queryoffer request	
		
		# raise "MSO version #{mso} is invalid" if !@mso.include?(@mso)
		# raise "AFFILIATE version #{aff} is invalid" if !@aff.include?(@aff)

		# ?? move get trackingID (or use dummy value) here & update 
		prep_aRequest

	end

	def file_exist?
		#check to see specific file exists
	end

	def file_of_right_format?

	end

	def prep_aRequest
		if @queryoffer == false
			if @mso == 4.1
				#send request, wait for response.  
				#pull trackingID & return value
			elsif @mso == 4.3
				#send request, wait for response.  
				#pull trackingID & return value
			end
		else
			if @mso == 4.1

			elsif @mso == 4.3

			end
		end
	end	

	def insert_TrackingID(aRequest)

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

	def save_test_file_results

	end
end
