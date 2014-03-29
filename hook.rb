#!/usr/bin/env ruby

require 'fileutils'

unless ENV['ACTION'].nil?
   if ENV['ACTION'] == 'download'
     #$stderr.puts ENV.inspect
     filename = ENV['ARGUMENT']
     folder = File.dirname(File.expand_path(__FILE__))

     FileUtils.mkdir_p File.join(folder, 'photos/')

     FileUtils.mv File.join(`pwd`, filename), File.join(folder, 'photos/')

   end
end

