# # encoding: utf-8

# Inspec test for recipe mongo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/




describe service('mongod') do
  it {should be_enabled}
  it {should be_running}
end

describe package 'mongodb-org' do
  it { should be_installed }
  its('version') { should match /3\./ }
end


describe port('0.0.0.0',27017) do
  it { should be_listening }
end
