$:.unshift(File.expand_path(File.join(File.dirname(__FILE__),"../")))
require 'java'
require 'supervised_utils'

module Weka
  module Filter
  	module Supervised
  		module Attribute
  			java_import "weka.core.Utils"
  			java_import "weka.filters.Filter"
   			java_import "weka.filters.supervised.attribute.AttributeSelection"
        java_import "weka.filters.supervised.attribute.Discretize"

   			class AttributeSelection
          include Supervised_Util
   			end

        class Discretize  
          include Supervised_Util
        end
  			
  		end
  	end
  end
end