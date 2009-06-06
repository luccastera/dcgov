# Last modified: June 6, 09.
Gem::Specification.new do |s|
  s.name = 'dcgov'
  s.version = '0.0.2'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.summary = 'A basic interface to the citywide API published by the District of Columbia'
  s.description = s.summary
  s.author = 'Zvi Band'
  s.email = 'zvi@skeevisarts.com'
  s.homepage = 'http://skeevisarts.com'
  # s.executables = ['your_executable_here']
  s.files = %w(LICENSE README Rakefile lib/dcgov lib/dcgov/service_type.rb lib/dcgov/util.rb lib/dcgov/open311.rb lib/dcgov/address.rb lib/dcgov/easy_class_maker.rb lib/dcgov/service_request_field.rb lib/dcgov/geocoder.rb lib/dcgov/service_request.rb lib/dcgov.rb spec/geocoder_spec.rb spec/spec_helper.rb spec/open_311_spec.rb)
  s.require_path = "lib"
  s.bindir = "bin"
  s.add_dependency("json")
end

