$:.unshift File.dirname(__FILE__)
require 'attribute_selection_utils'

module Weka
  module Attribute_selection
    module Evaluator
      #This module contains evaluators from the 'weka.attributeSelection' packages
      java_import 'weka.attributeSelection.CfsSubsetEval'
      java_import 'weka.attributeSelection.ChiSquaredAttributeEval'

      class CfsSubsetEval
        include Attribute_selection_Utils 
      #  java_alias :use_options , :setOptions, [Java::Java.lang.String[]]
      end

      class ChiSquaredAttributeEval
        include Attribute_selection_Utils  
      end

    end 
  end
end