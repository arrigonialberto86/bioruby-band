$:.unshift File.dirname(__FILE__)
require 'attribute_selection_utils'

module Weka
  module Attribute_selection
    #This module contains search algorithms from the 'weka.attributeSelection' packages
    module Search
      
      java_import 'weka.attributeSelection.GreedyStepwise'
      java_import 'weka.attributeSelection.RankSearch'
      java_import 'weka.attributeSelection.Ranker'

      class GreedyStepwise
        include Attribute_selection_Utils 
      end

      class Ranker
        include Attribute_selection_Utils 
      end

      class RankSearch
        include Attribute_selection_Utils 
      end

    end 
  end
end