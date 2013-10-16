#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2013 Jonas Pfenniger
#

# Make sure the hostname is correct before doing anything else
include_recipe "base::hostname"

# Configure system logging
include_recipe "base::syslog"

# Configure local mail delivery (syslog)
include_recipe "base::mail"

# Base packages
include_recipe "base::packages"

# Configure root and it's tools
include_recipe "base::sysadmin"

# Configure the remote login user
include_recipe "base::login"

# Configure the app environment
include_recipe "base::app"
