require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# set nls_lang to avoid warning msgs that fallback to ascii7
ENV['NLS_LANG'] = 'AMERICAN_AMERICA.AL32UTF8'