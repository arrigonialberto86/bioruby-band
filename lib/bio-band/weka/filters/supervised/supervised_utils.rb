module Supervised_Util
  java_import "weka.core.Utils"
  java_import "weka.filters.Filter"

  #Instance methods list
  def filter_options
    listOptions.map {|key| "#{key.synopsis} #{key.description}"}.join("\n")
  end

  def set_filter_options(options_string)
    options = Utils.splitOptions(options_string)
    setOptions(options)
  end

  def set_data(instances)
    setInputFormat(instances)
    @input = instances
  end

  def description
    begin; globalInfo; rescue; NoMethodError; "Sorry, no description available for this filter"; end
  end

  def use
    Filter.useFilter(@input,self)
  end

  def set(&block)
    self.instance_eval(&block)
  end

end


