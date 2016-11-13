require "fgmt/version"
require "yaml"

module Fgmt
  
  YML_FGMT = YAML.load_file(File.join(File.dirname(__FILE__),"fgmt", "yml", "fgmt.yml"))


  FGMT = YML_FGMT.map { |_, v| v }.flatten.compact.sort


  
  YML_GLOBALCLIMATE = YAML.load_file(File.join(File.dirname(__FILE__),"fgmt", "yml", "globalclimate.yml"))


  FGMT =  YML_GLOBALCLIMATE.map { |_, v| v }.flatten.compact.sort
end
