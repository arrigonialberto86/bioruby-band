$:.unshift File.dirname(__FILE__)
require 'clusterers_utils'

module Weka
	module Clusterer
    java_import 'weka.clusterers.SimpleKMeans'
    java_import 'weka.clusterers.FarthestFirst'

    class SimpleKMeans
      include Clusterer_utils
      class Base < SimpleKMeans
        def initialize
          super
          init_clusterer
        end
      end
    end

    class FarthestFirst
      include Clusterer_utils
      class Base < FarthestFirst
        def initialize
          super
          init_clusterer
        end
      end
    end

	end
end