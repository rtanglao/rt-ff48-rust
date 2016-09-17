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
  s = t.yday
  year = t.year
  $stderr.printf("year:%d\n", year)
  if year == 2015
    s += 365
    $stderr.printf("year is 2015 ADDING 365: %s\n", s)
  elsif year == 2014
    next
    $stderr.printf("year is 2014 NOT ADDING\n")
  elsif
    $stderr.printf("year is NOT 2015 and NOT 2014:%s\n", year)
  end
                    

  # qq s
  printf("%d,%s,%s\n",s,row[1],row[0])
end
 
