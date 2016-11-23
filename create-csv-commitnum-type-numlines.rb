#!/usr/bin/env ruby
require 'rubygems'

exit if ARGV.length != 1
rust_git_commits = File.readlines(ARGV[0])
printf ("commit,type,number_of_lines\n")

rust_git_commits.each_with_index do |line,i|
  STDERR.printf("line:%s", line)
  comma_fields = line.chomp.split(',')
  insertions_index = comma_fields.index{|s| s.include?("insertions")}
  if insertions_index
    space_fields = comma_fields[insertions_index].split(' ')
    STDERR.printf("insertion field [0]:%s\n", space_fields[0])
    printf("%d,insertion,%d\n", i+1, space_fields[0].to_i)
  end
  deletions_index = comma_fields.index{|s| s.include?("deletions")}
  if deletions_index
    space_fields = comma_fields[deletions_index].split(' ')
    STDERR.printf("deletion field [0]:%s\n", space_fields[0])
    printf("%d,deletion,%d\n", i+1, space_fields[0].to_i)
  end
end

