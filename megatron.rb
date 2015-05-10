require_relative 'arguments'
require_relative 'testcase'
require_relation 'testsuite'
require 'YAML'


# pull arguments from command line
# create objects
# run tests, capture results
# return exit code 1 or 0, and file of results.


# Arguments (make its own class)
#
# OptimusPrime location
# Core location (Environment)
# One Test to run
# One Directory
# Recurrsive = true/false
# return file = true/false (ie: build machine doesn't care, individual would)


# GUI
# Load File
# Set other arguments
# Run
# Show failures in realtime by clicking on a test name.

arguments
CONFIG = Yaml.load_file("config.yml") unless defined? CONFIG
arguments(CONFIG)




if failure == true
	exit 1
else
	exit 0
end

