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
}
