#
# Cookbook Name:: tuning
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'tuning::default' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new
    runner.converge(described_recipe)
  end

  it 'disable tcp slow start after idle' do
    expect(chef_run).to run_execute('sysctl -w net.ipv4.tcp_slow_start_after_idle=0')
  end

  it 'enable tcp window scaling' do
    expect(chef_run).to run_execute('sysctl -w net.ipv4.tcp_window_scaling=1')
  end
end
