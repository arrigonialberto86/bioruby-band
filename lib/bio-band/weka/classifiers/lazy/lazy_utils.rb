#This module is used by the 'lazy' classifiers from 'lazy.rb' 
#to inherit the following methods (instance and class methods)
module Lazy_utils
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
		listOptions.each {|key| puts "#{key.synopsis} #{key.description}"}
	end

	def description
    puts globalInfo
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

		classifier_attr_accessor :options,:data,:class_index

	end
end