lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'neo4j-jars/version'


Gem::Specification.new do |s|
  s.name     = "neo4j-jars"
  s.version  = Neo4jJars::VERSION
  s.platform = 'java'
  s.required_ruby_version = ">= 1.8.7"

  s.authors  = "Andreas Ronge"
  s.email    = 'andreas.ronge@gmail.com'
  s.homepage = "http://github.com/andreasronge/neo4j-jars/tree"
  s.rubyforge_project = 'neo4j-jars'
  s.summary = "The Java Jar files needed for the neo4j gem"
  s.description = <<-EOF
Contains the jars found on http://neo4j.org/download/
Please check the license for those jar files on the link above !
  EOF

  s.require_path = 'lib'
  s.files = Dir.glob("lib/**/*") + %w(README.rdoc Gemfile neo4j-jars.gemspec)
  s.has_rdoc = false
end
