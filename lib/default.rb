# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

unless defined? LOADED_COMPASS_CONFIG
  LOADED_COMPASS_CONFIG = true
  require 'compass'
  Compass.add_project_configuration 'compass/config.rb'
end
sass_options = Compass.sass_engine_options

unless ENV['NANOC_ENV']
  puts "\n\033[1;35mWarn:\033[0m For production build, delete the tmp directory and set NANOC_ENV=production."
end
