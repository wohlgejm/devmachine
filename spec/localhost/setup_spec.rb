# frozen_string_literal: true

require 'spec_helper'

PACKAGES = %w[
  build-essential
  cmake
  python-dev
  python-pip
  python3-dev
  python3-pip
  libxss1
  libappindicator1
  libindicator7
  git
  curl
  byobu
  dconf-cli
  xclip
  libreadline-dev
  zlib1g-dev
  postgresql
  postgresql-contrib
  libpq-dev
  patch
  liblzma-dev
  qt5-default
  libqt5webkit5-dev
  awscli
  libncurses5-dev
  libffi-dev
  libgdbm5
  libgdbm-dev
  libssl1.0-dev
  redis-server
  neovim
].freeze

PACKAGES.each do |package|
  describe package(package) do
    it { should be_installed }
  end
end

describe file('/home/jerry/.rbenv/bin/rbenv') do
  it { should be_executable }
end

describe command('ruby -v') do
  its(:stdout) { should match(/2\.3\.1/) }
end

describe file('/home/jerry/.byobu/.tmux.conf') do
  it { should be_symlink }
end

describe file('/home/jerry/.vimrc') do
  it { should be_symlink }
end

describe file('/usr/bin/local/n') do
  it { should be_symlink }
end

describe file('/usr/local/bin/virtualenv') do
  it { should be_executable }
end

describe file('/home/jerry/.cargo/bin/rustc') do
  it { should be_executable }
end
