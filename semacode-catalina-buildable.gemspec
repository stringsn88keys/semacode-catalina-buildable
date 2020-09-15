# require 'rubygems'
# require 'rake/gempackagetask'

Gem::Specification.new do |s|
  s.name = "semacode-catalina-buildable"
  s.version = "0.0.1"
  s.author = ["Guido Sohne", "Thomas Powell"]
  s.email = ["guido@sohne.net", "twilliampowell@gmail.com"]
  s.licenses = ['GPL-2.0-or-later']
  s.platform = Gem::Platform::RUBY
  s.summary = "Create semacodes (2D barcodes) using Ruby."
  s.description = <<DESC
  This is a clone of the semacode gem source with extension code that *compiles* in C99.
  No guarantees that it doesn't have other problems.

  This Ruby extension implements a DataMatrix encoder for Ruby. It is typically
  used to create semacodes, which are barcodes, that contain URLs. This encoder
  does not create image files or visual representations of the semacode. This is
  because it can be used for more than creating images, such as rendering
  semacodes to HTML, SVG, PDF or even stored in a database or file for later
  use.
DESC

  s.extensions << 'ext/extconf.rb'
  s.add_dependency('rake', '>= 0.7.0')
  s.files = Dir[
    "{lib,ext}/**/*.rb",
    "ext/**/*.c",
    "ext/**/*.h",
    "tests/**/*.rb",
    "README",
    "CHANGELOG",
    "Rakefile"]
  s.require_path = "lib"
  s.autorequire = "semacode"
  s.test_files = Dir["{tests}/**/*test.rb"]
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end
