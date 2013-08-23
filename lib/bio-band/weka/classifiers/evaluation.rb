module Weka
	module Classifier
		java_import 'weka.classifiers.Evaluation'
    java_import 'java.util.Random'

		class Evaluation
			def summary
				toSummaryString
			end
		end
    
	end
end