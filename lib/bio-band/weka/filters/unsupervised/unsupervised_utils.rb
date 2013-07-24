module Unsupervised_Util
	java_import "weka.core.Utils"
	java_import "weka.filters.Filter"

	#Instance methods list
	def filter_options
		begin
			listOptions.each {|key| puts "#{key.synopsis} #{key.description}"}
		rescue
			puts  "Sorry, list option is available for this filter"
		end
	end

	def set_filter_options(options_string)
		options = Utils.splitOptions(options_string)
		setOptions(options)
	end

	def set_data(instances)
		setInputFormat(instances)
		@input = instances
	end

	def description
    begin; puts globalInfo; rescue; NoMethodError; puts "Sorry, no description available for this filter"; end
	end

	def use
		Filter.useFilter(@input,self)
	end

end

