require 'spec_helper'

describe 'tuning::default' do
  describe command('sysctl net.ipv4.tcp_slow_start_after_idle') do
    its(:stdout) { should match /net\.ipv4\.tcp_slow_start_after_idle = 0/ }
  end

  describe command('sysctl net.ipv4.tcp_window_scaling') do
    its(:stdout) { should match /net\.ipv4\.tcp_window_scaling = 1/ }
  end
end
