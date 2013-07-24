#This module is used by the classes from the Clusterer module 
#to inherit the following methods (instance and class methods)
module Clusterer_utils
	java_import "weka.core.Utils"

	#Instance methods list
  def self.included(base)
    base.extend(ClassMethods)
  end

  def set_options(options)
  	options_inst = Utils.splitOptions(options)
		setOptions(options_inst)
  end

	def list_options
    options = ''
		listOptions.each {|key| options="#{options}\n#{key.synopsis} #{key.description}"}
    options
	end

	def description
    globalInfo
	end

  def get_centroids 
    getClusterCentroids
  end

  def list_capabilities
    get_capabilities.to_s
  end

	#Class methods module
	module ClassMethods
		
		def self.classifier_attr_accessor(*args)
	    args.each do |arg|
	      #Here's the getter
	      self.class_eval("def #{arg};@#{arg};end")
	      #Here's the setter
	      self.class_eval("def set_#{arg}(val);@#{arg}=val;end")
	  	end
  	end

		classifier_attr_accessor :options,:data

	end
end
