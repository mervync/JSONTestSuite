#!/usr/bin/env ruby

require 'yajl'

f = ARGV[0]

o = nil

begin
    puts(f)
    json = File.read(f)
    parser = Yajl::Parser.new
    o = parser.parse( json )
    p o

    exit 0
rescue StandardError => e
    puts(e)
    exit 1
end
