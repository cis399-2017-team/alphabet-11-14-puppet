class users {

    group { "cis399":
        ensure  => present,
        gid     => 3999,
    }

    user { "nsato10":
        ensure  => present,
        uid     => 4000,
        gid     => 3999,
        home    => "/home/nsato10",
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "nsato10",
        purge_ssh_keys => true,
        managehome => true,
    }

    user { "test":
        ensure  => present,
        uid     => 4999,
        gid     => 3999,
        home    => "/home/test",
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "nsato10",
        purge_ssh_keys => true,
        managehome => true,
    }
}
