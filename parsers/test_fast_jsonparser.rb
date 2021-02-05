#!/usr/bin/env ruby

require 'fast_jsonparser'

f = ARGV[0]

o = nil

begin
    puts(f)
    json = File.read(f)
    o = FastJsonparser.parse( json )
    p o

    exit 0
rescue StandardError => e
    puts(e)
    exit 1
end
