#!/usr/bin/env ruby

require 'fileutils'

unless ENV['ACTION'].nil?
   if ENV['ACTION'] == 'download'
     #$stderr.puts ENV.inspect
     filename = ENV['ARGUMENT']

     FileUtils.mkdir_p 'photos'

     FileUtils.mv filename File.join('photo')

   end
end

