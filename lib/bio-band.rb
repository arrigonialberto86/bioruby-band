start = File.absolute_path '.'
Dir.chdir(File.join(File.dirname(__FILE__),".."))
require 'jbundler'
Dir.chdir start
require File.join(File.dirname(__FILE__),'..','.jbundler','classpath.rb')
require "java"
require "bio-band/core"
require "bio-band/weka"
require "bio-band/apache"
Random.ancestors[1].instance_eval {remove_const :Random} if defined?(Random)
java_import 'java.util.Random'

