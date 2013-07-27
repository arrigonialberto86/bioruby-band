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
            init_function
          end
        end
      end

    end
  end
end