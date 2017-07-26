class users {

    group { "cis399":
        ensure  => present,
        gid     => 3999,
    }

    $useratt = {
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "nsato10",
        purge_ssh_keys => true,
        managehome => true,
    }

    user { "nsato10":
        ensure  => present,
        uid     => 4000,
        home    => "/home/nsato10",
        *       => $useratt,
    }

    user { "mheb":
        ensure  => present,
        uid     => 4001,
        home    => "/home/mheb",
        *       => $useratt,
    }

    user { "loganr":
        ensure  => present,
        uid     => 4002,
        home    => "/home/loganr",
        *       => $useratt,
    }

    user { "test":
        ensure  => absent,
        uid     => 4999,
        home    => "/home/test",
        *       => $useratt,
    }
}
