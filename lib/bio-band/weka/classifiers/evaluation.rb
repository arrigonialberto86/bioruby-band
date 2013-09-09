module Weka
  module Classifier
    java_import 'weka.classifiers.Evaluation'

    class Evaluation
      def summary
        toSummaryString
      end
    end
    
  end
end