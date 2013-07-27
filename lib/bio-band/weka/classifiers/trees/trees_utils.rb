#This module is used by the 'trees' classifiers from 'trees.rb' 
#to inherit the following methods (instance and class methods)
module Trees_utils
	java_import "weka.core.Utils"

  def init_tree
    set_options(self.class.options) if self.class.options 
    self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
    buildClassifier(self.class.data)
  end

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



