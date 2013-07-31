$:.unshift File.dirname(__FILE__)
require 'clusterers_utils'

module Weka
	module Clusterer
    java_import 'weka.clusterers.SimpleKMeans'
    java_import 'weka.clusterers.FarthestFirst'
    java_import 'weka.clusterers.EM'
    java_import 'weka.clusterers.XMeans'
    java_import 'weka.clusterers.HierarchicalClusterer'
    java_import 'weka.clusterers.Cobweb'     

    class Cobweb
      include Clusterer_utils
      class Base < Cobweb
        def initialize
          super
          init_clusterer
        end
      end
    end

    class EM
      include Clusterer_utils
      class Base < EM
        def initialize
          super
          init_clusterer
        end
      end
    end

    class HierarchicalClusterer
      include Clusterer_utils
      class Base < HierarchicalClusterer
        def initialize
          super
          init_clusterer
        end
      end
    end


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

    class XMeans
      include Clusterer_utils
      class Base < XMeans
        def initialize
          super
          init_clusterer
        end
      end
    end

	end
end