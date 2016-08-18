#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'pp'
require 'octokit'
client = Octokit::Client.new(:netrc => true)
# get commits from https://github.com/mozilla/mp4parse-rust
#repo = Octokit.repo 'mozilla/mp4parse-rust'
#pp repo
printf("authorid,login,commitdate\n")
pp  Octokit.commits_since('mozilla/mp4parse-rust', '2016-01-01')[0]
Octokit.commits_since('mozilla/mp4parse-rust', '2016-01-01').each do |commit|
  printf("%d,%s,%s\n", commit.author.id, commit.author.login, commit.commit.author.date)
end
