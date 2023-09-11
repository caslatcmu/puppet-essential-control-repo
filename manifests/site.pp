node 'rhhost1.cmu-19gltq3.kvmlocal' {
  include role::master

  file { '/etc/puppet-managed':
    ensure => present,
    mode => '0644',
    content => "This is the puppet-master!\n",
  }
}

node default {
  file { '/etc/motd':
    ensure => present,
    mode => '0644',
    content => "This is a puppet-managed node!\n",
  }
  user { 'username':
    ensure => present,
    uid => 1001,
    gid => 1000,
    groups => 'wheel',
    password => Sensitive("puppet sucks"),
    purge_ssh_keys => true,
  }
  group { 'username':
    ensure => present,
    gid => 1000,
  }
  ssh_authorized_key { 'casl@cmu-19gltq3':
    ensure => present,
    user => 'username',
    type => 'ssh-ed25519',
    key => 'AAAAC3NzaC1lZDI1NTE5AAAAIP70WPQM1LrxeeivxaDZdrXXrRUg9d+yWAe3tF4C1qhS',
  }
}
