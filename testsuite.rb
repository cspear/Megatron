require 'yaml'


#
# a collection of tests in one file.
#


class Testsuite

	attr_reader :alltests

	def initialize(arguments, file_location)

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

			testresult = Testcase.new(arguments, count_tests, key)
			# => ie:testresult = ["1" : "fail"]
			# set testresult as a hash
			puts "Test results for test number #{count_tests} is #{testresult.to_s}"
		end
	
		return testresult
	end




end


# file format
# 