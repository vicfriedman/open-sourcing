require "pry"
require "CSV"

contents = File.open("intro-web-design").read

array = contents.scan(/\["learn-co-curriculum\/([a-z|\-|\.|0-9|_|A-Z]+)", \d+\]/).map{|a|a.first}

