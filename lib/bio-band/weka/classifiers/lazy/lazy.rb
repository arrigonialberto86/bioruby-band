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
            init_lazy
					end
				end
			end
    end
  end
end