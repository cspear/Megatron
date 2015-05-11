require 'yaml'
require 'savon'


#
# a collection of tests in one file.
#


class Testsuite

	attr_reader :alltests

	def initialize(arguments, file_location)
		@testreturn = Array.new

		if file_location == nil 
			puts "testsuite file location not found or missing"
			false
			return
		end
		
		puts "about to read yml file #{file_location}"
		# @alltests = YAML.load_file(file_location)
		@alltests = YAML::load(File.open(file_location))

		count_tests = 0

		#parse through and create test object, that run once created and return pass/fail
		@alltests["tests"].each do |key, value|
			count_tests = count_tests + 1
			key.each do |subkey, subvalue|
				puts "subkey ---> #{subkey}  "
				puts "subvalue -> #{subvalue}"
			end

			@testresult = Testcase.new(arguments, count_tests, key)
			
			# add to Hash (testreturn) with testcase# and pass/fail
			# => ie:testresult = ["1" : "fail"]
			# set testresult as a hash
			puts "Test results for test number #{count_tests} is #{@testresult.to_s}"
		end
	
		return @testreturn
	end





	def soap_call(destination, message)
		client = Savon::Client.new(destination)
		response = client.request :echo, "EchoRequest", :body => message do
			soap.namespaces["xmlns:echo"] = "http://www.go2broadband.com"
			soap.timeout

		end
		data = response.to_array(:echo_response).first
		#puts "Soap service responded with: #{data[:message]}"
		return data
	end	

	def pull_trackingID
		#read message
		#find TrackingID & return
	end

	def pull_msoID
		#read message
		#find MSOID & return
	end

	def add_trackingID(trackingID)
		#first check to see if one is there
		#find it (refactor out code w/ pull)
		#
	end

	def add_msoID(msoID)
		#similar to add_trackingID
	end

	def soap_message_valid?(message)

	end

	def generate_fake_trackingID

	end

	def add_fake_trackingID(message)

	end

	def message_to_verify_message_the_same?(message, verify)

	end

end


# file format
# 