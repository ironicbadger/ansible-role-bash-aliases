control "virtualbox" do
  title "Virtualbox installation check"

  describe package('virtualbox-5.1') do
    it { should be_installed }
  end

  describe package('dkms') do
    it { should be_installed }
  end

  describe command('virtualbox') do
    it { should exist }
  end

  describe command('VBoxManage') do
    it { should exist }
  end

end
