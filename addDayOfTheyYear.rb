#!/usr/bin/env ruby
require 'rubygems'
require 'cute_print'
require 'CSV'
 
filename = ARGV[0]
header = true
printf("dayofyear,unixtime,person\n")
CSV.foreach(filename) do |row|
  if header == true
    header = false
    next
  end
  t = Time.at(row[1].to_i)
  s = t.strftime("%-j")
  # qq s
  printf("%s,%s,%s\n",s,row[1],row[0])
end
 
