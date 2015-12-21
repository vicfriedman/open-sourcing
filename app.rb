require 'pry'
require 'octokit'
require "CSV"



client = Octokit::Client.new(:access_token => "ACCESS_TOKEN")

url = "http://github.com/learn-co-curriculum/"
contents = File.open("ios").read

repos.each do |r|
  correct_url = url + r
  system "git clone https://ACCESS_TOKEN:x-oauth-basic@github.com/learn-co-curriculum/#{r}"
  Dir.chdir("#{r}")
  system "learn-write"
  system "git add ."
  system "git commit -m '[processing skip]'"
  system "git push"
  client.edit_repository("learn-co-curriculum/#{r}", :private => false)
  puts "done with :#{r}"
  Dir.chdir("..")
  system "rm -rf #{r}"
end



