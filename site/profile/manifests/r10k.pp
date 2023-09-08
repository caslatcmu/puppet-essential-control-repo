class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/caslatcmu/puppet-essential-control-repo',
  }
  class {'r10k::webook':
    user  => 'root',
    group => 'root',
  }
}
