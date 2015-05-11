require 'trollop'



class Arguments

	# values from command_line always win, then config_file, and then default values)

	# OptimusPrime Location
	# CORE location
	# SSL (?)
	# One Test to run
	# One Directory to run
	# Recursive?
	# return file?  (ie: build machine just needs exit code)
	# random (random order run)
	# run-til-failure (continuous run until failure, return stats on run)
	# exit-on-failure (exit on 1st failure - ie: what build machine needs)

	# could get rid of :liveMSO, assume liveMSO if liveMSOLocation is present.

# --returnfile=>true 

	attr_reader :optimusPrime, :liveMSO, :liveMSOLocation, :core, :directory, :testsuite, :recurrsive, :deleteresults, :runtilfailure, :exitonfailure

	def initialize(config_file_values)
		opts = Trollop::options do
			opt :optimusPrime, "Path of OptimusPrime", :type => String
			opt :liveMSO, "Using a live MSO", :Default => false
			opt :liveMSOLocation, "Live MSO location", :type => String
			opt :core, "Core location", :type => String
			opt :directory, "Path to Testsuite directory", :type => String
			opt :testsuite, "Path to individual Testsuite", :type => String
			opt :recurrsive, "Recurrsive", :Default => false
			opt :deleteresults, "Delete test results", :Default => false
			opt :runtilfailure, "Run testsuites continously until a failure is found", :Default => false
			opt :exitonfailure, "Exit running tests on failure (build machine)", :Default => false
		end

		@optimusPrime 		= opts.optimusPrime
		@liveMSO 			= opts.liveMSO
		@liveMSOLocation	= opts.liveMSOLocation
		@core 				= opts.core
		@directory 			= opts.directory
		@testsuite 			= opts.testsuite
		@recurrsive 		= opts.recurrsive
		@deleteresults 		= opts.deleteresults
		@runtilfailure 		= opts.runtilfailure
		@exitonfailure 		= opts.exitonfailure


		if @optimusPrime == nil then 
			@optimusPrime = config_file_values['optimusPrime'] 
		end
		if @liveMSO == nil then 
			@liveMSO = config_file_values['liveMSO'] 
		end
		if @liveMSOLocation == nil then 
			@liveMSOLocation = config_file_values['liveMSOLocation'] 
		end
		if @core == nil then 
			@core = config_file_values['core'] 
		end
		if @recurrsive == nil then 
			@recurrsive = config_file_values['recurrsive'] 
		end

		# puts "--- passed in config values ---"
		# puts config_file_values
		# puts config_file_values['optimusPrime']

		# puts "--- options ---"
		# puts opts
		# puts "--- arguments set are ---"
		# puts @optimusPrime
		# puts @liveMSO
		# puts @liveMSOLocation
		# puts @core
		# puts @directory
		# puts @testsuite
		# puts @recurrsive
		# puts @deleteresults
		# puts @runtilfailure
		# puts @exitonfailure
	end

	def optimusPrime_up?
		# test if valid location
		# return error if its not
	end

	def liveMSO_up?

	end

	def have_enough_parameters_to_run?

	end
end








