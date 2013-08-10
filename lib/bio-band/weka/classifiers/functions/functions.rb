$:.unshift File.dirname(__FILE__)
require 'functions_utils'

module Weka
	module Classifier
		module Functions
      java_import 'weka.classifiers.functions.LinearRegression'
      java_import 'weka.classifiers.functions.PLSClassifier'
      java_import 'weka.classifiers.functions.RBFNetwork'
      java_import 'weka.classifiers.functions.GaussianProcesses'
      java_import 'weka.classifiers.functions.LeastMedSq'
      java_import 'weka.classifiers.functions.LibSVM'
      java_import 'weka.classifiers.functions.SMO'
      java_import 'weka.classifiers.functions.SMOreg'
      java_import 'weka.classifiers.functions.SPegasos'
      java_import 'weka.classifiers.functions.VotedPerceptron'
      java_import 'weka.classifiers.functions.Winnow'


      class LeastMedSq
        include Functions_utils
        class Base < LeastMedSq
          def initialize
            super
            init_function
          end
        end
      end

      class LibSVM
        include Functions_utils
        class Base < LibSVM
          def initialize
            super
            init_function
          end
        end
      end

      class LinearRegression
        include Functions_utils
        class Base < LinearRegression
          def initialize
            super
            init_function
          end
        end
      end

      class PLSClassifier
        include Functions_utils
        class Base < PLSClassifier
          def initialize
            super
            init_function
          end
        end
      end

      class RBFNetwork
        include Functions_utils
        class Base < RBFNetwork
          def initialize
            super
            init_function
          end
        end
      end

      class SMO
        include Functions_utils
        class Base < SMO
          def initialize
            super
            init_function
          end
        end
      end

      class SMOreg
        include Functions_utils
        class Base < SMOreg
          def initialize
            super
            init_function
          end
        end
      end

      class SPegasos
        include Functions_utils
        class Base < SPegasos
          def initialize
            super
            init_function
          end
        end
      end 

      class GaussianProcesses
        include Functions_utils
        class Base < GaussianProcesses
          def initialize
            super
            init_function
          end
        end
      end

      class VotedPerceptron
        include Functions_utils
        class Base < VotedPerceptron
          def initialize
            super
            init_function
          end
        end
      end

      class Winnow
        include Functions_utils
        class Base < Winnow
          def initialize
            super
            init_function
          end
        end
      end

    end
  end
end