$:.unshift File.dirname(__FILE__)
require 'trees_utils'

module Weka
	module Classifier
		module Trees
      java_import 'weka.classifiers.trees.J48'
      java_import 'weka.classifiers.trees.RandomForest'

      class FT
        include Trees_utils
        class Base < FT
          def initialize
            super
            init_tree
          end
        end
      end

      class J48
        include Trees_utils
        class Base < J48
          def initialize
            super
            init_tree
          end
        end
      end

      class RandomForest
        include Trees_utils
        class Base < RandomForest
          def initialize
            super
            init_tree
          end
        end
      end

		end
  end
end