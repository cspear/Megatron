require 'trollop'



class Arguments(config_file_values)

	# values from command_line always win, then config_file, and then default values)
		# optimusPrime: 
		# liveMSO: false
		# core: 
		# recurrsive: true
		# deleteresults: false
		# runtilfailure: false
		# exitonfailure: false

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

# --returnfile=>true 

	def initialize
		opts = Trollop::options do
			opt :optimusPrime, :type => string
			opt :liveMSO, :Default => false
			opt :liveMSOLocation, :type => string
			opt :core, :type => string
			opt :directory, :type => string
			opt :test, :type => string
			opt :recurrsive, :Default => false
			opt :deleteresults, :Default => false
			opt :runtilfailure, :Default => false
			opt :exitonfailure, :Default => false
		end

		if opts.optimusPrime == nil then opts.optimusPrime = config_file_values['optimusPrime']
		if opts.liveMSO == nil then opts.liveMSO = config_file_values['liveMSO']
		if opts.core == nil then opts.core = config_file_values['core']
		if opts.recurrsive == nil then opts.recurrsive = config_file_values['recurrsive']
		# rest if needed

		@optimusPrime 		= opts.optimusPrime
		@liveMSO 			= opts.liveMSO
		@liveMSOLocation	= opts.liveMSOLocation
		@core 				= opts.core
		@directory 			= opts.directory
		@test 				= opts.test
		@recurrsive 		= opts.recurrsive
		@deleteresults 		= opts.deleteresults
		@runtilfailure 		= opts.runtilfailure
		@exitonfailure 		= opts.exitonfailure

	end

	def optimusPrime?
		# test if valid location
		# return error if its not
	end



end








end