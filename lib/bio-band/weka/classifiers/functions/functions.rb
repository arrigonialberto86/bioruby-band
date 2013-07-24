$:.unshift File.dirname(__FILE__)
require 'functions_utils'

module Weka
	module Classifier
		module Functions
      java_import 'weka.classifiers.functions.LinearRegression'

      class LinearRegression
        include Functions_utils
        class Base < LinearRegression
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