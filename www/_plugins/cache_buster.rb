#!/usr/bin/env ruby

require 'fileutils'

# Copyright (c) 2020 Michael Ruddy
# this plugin moves the copied static content direcotry
# to a versioned static content directory to support
# static content cache busting

Jekyll::Hooks.register :site, :post_write do |site|
  # the version is a simple time format of the site build time
  sym_link_name = site.time.strftime('%Y%m%d%H%M%S')
  path_to_static = File.join(site.dest, 'static')
  path_to_target = File.join(path_to_static, 'version')
  path_to_link = File.join(path_to_static, sym_link_name)
  FileUtils.mv(path_to_target, path_to_link, verbose: true)
end
