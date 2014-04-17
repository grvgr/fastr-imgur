#!/usr/bin/env ruby

require 'cgi'

LOG   = '/tmp/redirect.firefly.local.log'
DEBUG = false

cgi = CGI.new
buf = ' '

scheme   = 'http://'
host     = case cgi.host
           when 'i.imgur.com'
             'i.imgur.com.prx2.unblocksit.es'
           else
             cgi.host
           end
path     = cgi.params['path'].first
location = "#{ scheme }#{ host }#{ path }"

if DEBUG
  info = <<-INFO
request:
host:     #{ cgi.host   }
params:   #{ cgi.params }
redirect: #{ location   }
INFO

  `echo '#{ info }' >> #{ LOG }`
end

cgi.out(status: '302', location: location) { buf }

$stdout.close
