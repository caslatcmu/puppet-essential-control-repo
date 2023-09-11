class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/caslatcmu/puppet-essential-control-repo',
  }
}
