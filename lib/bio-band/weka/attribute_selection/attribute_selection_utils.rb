module Attribute_selection_Utils
  java_import "weka.core.Utils"

  #Instance methods list
  def options_list
    listOptions.map {|key| "#{key.synopsis} #{key.description}"}.join("\n")
  end 

  def select_options(options_string)
    options = Utils.splitOptions(options_string)
    set_options(options)
  end

  def description
    globalInfo
 end

end