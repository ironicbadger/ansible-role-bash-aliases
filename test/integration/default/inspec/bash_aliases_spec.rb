control "bash-aliases" do
  title "Bash aliases configuration check"

  describe file('/etc/bash_aliases') do
    it { should exist }
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('content') { should match(%r{alias test-alias='test-command'}) }
  end

  describe file('/etc/bash.bashrc') do
    it { should exist }
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('content') { should match(%r{source /etc/bash_aliases}) }
  end


end
