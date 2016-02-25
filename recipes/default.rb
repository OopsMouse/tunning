#
# Cookbook Name:: tuning
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'disable_tcp_slow_start_after_idle ' do
  command 'sysctl -w net.ipv4.tcp_slow_start_after_idle=0'
end

execute 'enable_tcp_window_scaling' do
  command 'sysctl -w net.ipv4.tcp_window_scaling=1'
end
