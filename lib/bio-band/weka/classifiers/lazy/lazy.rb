$:.unshift File.dirname(__FILE__)
require 'lazy_utils'

module Weka
	module Classifier
		module Lazy

      java_import 'weka.classifiers.lazy.KStar' 

			class KStar
				include Lazy_utils
				class Base < KStar
					def initialize
						super
						set_options(self.class.options) if self.class.options 
						self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
						buildClassifier(self.class.data)
					end
				end
			end
    end
  end
end