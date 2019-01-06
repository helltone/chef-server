# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should be_listening }
end

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_running }
end

describe file('/etc/motd') do
  its('content') { should match(%r{Hostname\s.*?}) }
end