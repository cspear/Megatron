require './arguments'
require './arguments'
require './testcase'
require './testsuite'
require 'yaml'

failure = false

# pull arguments from command line
# create objects
# run tests, capture results
# return exit code 1 or 0, and file of results.

# Arguments (make its own class)
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

#load config file, then grab arguments from the command line and reconcile.
# CONFIG = YAML.load_file("config.yml") unless defined? CONFIG
CONFIG = YAML::load(File.open("config.yml"))
argmts = Arguments.new(CONFIG)

#load testsuite, which creates testcases & runs them.
TS = Testsuite.new(argmts, argmts.testsuite)

if TS.include?['failure']
	failure = true
end

if failure == true
	exit 1
else
	exit 0
end


#TODO
#setup gemfile
#fix readme
#start adding spec files
#finish installing savon
#
