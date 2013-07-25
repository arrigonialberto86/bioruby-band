require 'java'

module Core
  module Parser
  	# Parse an ARFF file and create an Instances object
  	def Parser.parse_ARFF(arff_file) 
      java_import 'java.io.FileReader'
      file_in = FileReader.new arff_file
      data_instance = Core::Type::Instances.new file_in
      return data_instance
  	end
    # Parse an CSV file and create an Instances object
  	def Parser.parse_CSV(csv_file) 
  	  java_import 'weka.core.converters.CSVLoader'
      java_import 'java.io.File'
      loader = CSVLoader.new
      file = File.new csv_file 
      loader.setSource(file)
      data_instance = loader.getDataSet
      return data_instance
  	end
  end
end