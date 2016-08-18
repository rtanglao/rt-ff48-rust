#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'pp'
require 'octokit'
client = Octokit::Client.new(:netrc => true)
pp client.login
# get commits from https://github.com/mozilla/mp4parse-rust
#repo = Octokit.repo 'mozilla/mp4parse-rust'
#pp repo
commits = Octokit.commits('mozilla/mp4parse-rust')
pp commits
