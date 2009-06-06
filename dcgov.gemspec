# Last modified: June 6, 09 (to create github gem)
Gem::Specification.new do |s|
  s.name = 'dcgov'
  s.version = '0.0.1'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.summary = 'A basic interface to the citywide API published by the District of Columbia'
  s.description = s.summary
  s.author = 'Zvi Band'
  s.email = 'zvi@skeevisarts.com'
  s.homepage = 'http://skeevisarts.com'
  # s.executables = ['your_executable_here']
  s.files = %w(LICENSE README Rakefile) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
  s.add_dependency("json")
end

