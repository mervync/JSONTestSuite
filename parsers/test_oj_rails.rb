#!/usr/bin/env ruby

require 'oj'

f = ARGV[0]

o = nil

Oj.default_options = { :mode => :rails }

begin
    puts(f)
    json = File.read(f)
    o = Oj.load( json )
    p o

    exit 0
rescue StandardError => e
    puts(e)
    exit 1
end
