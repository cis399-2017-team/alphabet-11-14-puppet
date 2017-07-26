class users {

    group { "cis399":
        ensure  => present,
        gid     => 3999,
    }

        

    user { "nsato10":
        ensure  => present,
        uid     => 4000,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "nsato10",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/nsato10",
    }

    user { "mheb":
        ensure  => present,
        uid     => 4001,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "mheb",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/mheb",
    }

    user { "loganr":
        ensure  => present,
        uid     => 4002,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "loganr",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/loganr",
    }

    user { "test":
        ensure  => absent,
        uid     => 4999,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "test",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/test",
    }
}
