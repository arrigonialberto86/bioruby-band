$:.unshift File.dirname(__FILE__)
require 'bayes_utils'

module Weka
	module Classifier
		module Bayes
			java_import "weka.classifiers.bayes.NaiveBayes"
			java_import "weka.classifiers.bayes.BayesianLogisticRegression"
			java_import "weka.classifiers.bayes.AODE"
			java_import "weka.classifiers.bayes.ComplementNaiveBayes"
			java_import "weka.classifiers.bayes.WAODE"

			class NaiveBayes
				include Bayes_utils
				class Base < NaiveBayes
					def initialize
						super
						set_options(self.class.options) if self.class.options 
						self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
						buildClassifier(self.class.data)
					end
				end
			end

			class AODE
				include Bayes_utils
				class Base < AODE
					def initialize
						super
						set_options(self.class.options) if self.class.options 
						self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
						buildClassifier(self.class.data)
					end
				end
			end

			class BayesianLogisticRegression
				include Bayes_utils
				class Base < BayesianLogisticRegression
					def initialize
						super
						set_options(self.class.options) if self.class.options 
						self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
						buildClassifier(self.class.data)
					end
				end
			end

			class ComplementNaiveBayes
				include Bayes_utils
				class Base < ComplementNaiveBayes
					def initialize
						super
						set_options(self.class.options) if self.class.options 
						self.class.data.setClassIndex(self.class.class_index) if self.class.class_index
						buildClassifier(self.class.data)
					end
				end
			end

			class WAODE
				include Bayes_utils
				class Base < WAODE
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