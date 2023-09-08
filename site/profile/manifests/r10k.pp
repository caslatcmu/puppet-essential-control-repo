class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/caslatcmu/puppet-essential-control-repo',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
  }
  class {'r10k::webook':
    user  => 'root',
    group => 'root',
  }
}
