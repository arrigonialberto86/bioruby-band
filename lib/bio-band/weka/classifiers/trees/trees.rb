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
            set_options(self.class.options) if self.class.options 
            self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
            buildClassifier(self.class.data)
          end
        end
      end

      class J48
        include Trees_utils
        class Base < J48
          def initialize
            super
            set_options(self.class.options) if self.class.options 
            self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
            buildClassifier(self.class.data)
          end
        end
      end

      class RandomForest
        include Trees_utils
        class Base < RandomForest
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