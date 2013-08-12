$:.unshift File.dirname(__FILE__)
require 'lazy_utils'

module Weka
	module Classifier
		module Lazy

      java_import 'weka.classifiers.lazy.KStar' 
      java_import 'weka.classifiers.lazy.LWL' 
      java_import 'weka.classifiers.lazy.LBR'
      java_import 'weka.classifiers.lazy.IB1'
      java_import 'weka.classifiers.lazy.IBk'

			class KStar
				include Lazy_utils
				class Base < KStar
					def initialize
						super
            init_lazy
					end
				end
			end

      class LWL
        include Lazy_utils
        class Base < LWL
          def initialize
            super
            init_lazy
          end
        end
      end

      class LBR
        include Lazy_utils
        class Base < LBR
          def initialize
            super
            init_lazy
          end
        end
      end

      class IB1
        include Lazy_utils
        class Base < IB1
          def initialize
            super
            init_lazy
          end
        end
      end

      class IBk
        include Lazy_utils
        class Base < IBk
          def initialize
            super
            init_lazy
          end
        end
      end

    end
  end
end