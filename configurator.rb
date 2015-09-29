#!/usr/bin/ruby

require 'json'

class Configurator
	@jsonFile = ''
	
	def initialize(pathToJSONFile)
		readDirectives(pathToJSONFile)
	end
	
	def readDirectives(jsonFile)
		_readFile = File.read(jsonFile)
		@jsonFile = JSON.parse(_readFile)
	end
	
	def getConfig
		@jsonFile
	end
end