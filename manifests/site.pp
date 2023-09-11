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
  }
  group { 'username':
    ensure => present,
    gid => 1000,
  }
}
