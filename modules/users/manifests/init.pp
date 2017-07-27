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
    ssh_authorized_key { "nsato10":
        user    => "nsato10",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCH7Lspv4byYSdvKzSkh29q6lKco/f7WuiRVg06MeRiRqFDSknppvHoiAap1T3yVs8CH1wiWux9N1B2lEEqUMxFwxdR6vlgKkr8ACOLKVBBX3QPZSv5/jdaPENBqhIOQzQSv35vjNM6atPQ810fpKwoVtemFz4jfXP64GT91HK0oPbEMcTZOHJ2PBSx2l77K6/md/tF0JqK0voL6nz63X3npFuR3qdJ0kxLQghkdzAEryEsuTSn/KxBa2X/fyjfiGQY2h9sEG6fQLFdpTsj3zBmCxyksSUnxR3b+fkfjknJiHiuncu0CzchSbZXodah9zC/UGHo4L0LVAcMeBmvEQYF",
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
    ssh_authorized_key { "mheb":
        user    => "mheb",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCuCLdcGf5coUzGaSKxbAD3dSFAmZSmZ6glZhGDEs1mZF6nt66Cb5S2Klo4AboLSMvC8UUpaMSzj1rV4GjQ0Dhbupo37dNx8FVwJTvxe1EFMjM4hyt7bLquNJrDEW1GufONY+RLhROrKwoQUcAjI7tq9O74lZq+5Cb6YIk+voeBzM+odGZVnP8IWDBBhLLOa2nln9VWlpQO5x3fEXRJKcPlANnwRlQxzJLsyCUNBavzG+nLf8vtwKvFtnMini1gARrwrnV3pm+ditBNn8IyyIK5jtUovESfGl3ESW2ba+zUBca3p8xh5DHceN0ua6rfqo4LS3mkE2mvOVeJWNXmxOJV",
    }

    user { "mister_person":
        ensure  => present,
        uid     => 4002,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "mister_person",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/mister_person",
    }
    ssh_authorized_key { "mister_person":
        user    => "mister_person",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAACAQC2H7AV3pr9nCZfYDHp5Ji1RLQozWYCC9PfodqvEBLY4S+RHsVWMuyenSEdf0mMuYT6QISk2hG5aTZD1psMPK8glFIt0UQ1m8ZPWaUzUogM95WWazwnzfiLcPLAPYRnMBMLO0yFFPlVFSWEOLQ7jMoM/eXOpPzZdZ8iDKa/Fe3tJqnJaNDncxzqvvRjyMWt5+OUidah+DkKWwzymQ+XH/ypIXY5+6bzcBfkb4Z1/ijRbcu7pGu01fWLRWCvy/bJDqBFgSEIGTSngVd/B0oXOGqvdwScgldVoIKExwzSQ7JDITmOTkej/VpwUC3lKM21a+HG85AB5YoPqFr/6ih1FORfQbmjoWdT4VAJoFH6WfngoqcOfci3qa+BNDecRiOuQbNu65ptPfOhJh7aiuDdL+tmY+C00gtbVDhLTYTM5jepembpFcv/7f2O9VtWJpPXZ4u1WkaffmqH3ZqV+/ET7wxDZeGgr6RvoG88UxdWUvr/wHgJvngEz4Y1DHitwCzCXIko0kH73eaIt8kaJUEdOl6FceoBZBK9i2mNktnd5sWtsxAXO/1GOR7a0Mw+XCUI9r8sN6B5fX9wbnBNj2kClEJLInvIVxeQqIw2NH2FzYgxKySCH4h04yoZR0fUSgPHxEdUQPM6X/lZDYX1bVd+NNsu9YQuRH4JLEclE5vTLIXLxw==",
    }

    user { "cplachno":
        ensure  => present,
        uid     => 4003,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "cplachno",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/cplachno",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "vino":
        ensure  => present,
        uid     => 4004,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "vino",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/vino",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "cnf":
        ensure  => present,
        uid     => 4005,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "cnf",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/cnf",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "pogrebinsky":
        ensure  => present,
        uid     => 4006,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "pogrebinsky",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/pogrebinsky",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "kaelas":
        ensure  => present,
        uid     => 4007,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "kaelas",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/kaelas",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "nboyd":
        ensure  => present,
        uid     => 4008,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "nboyd",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/nboyd",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "coletc":
        ensure  => present,
        uid     => 4009,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "coletc",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/coletc",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "jdolan":
        ensure  => present,
        uid     => 4010,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "jdolan",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/jdolan",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "houllette":
        ensure  => present,
        uid     => 4011,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "houllette",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/houllette",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "jsheabia":
        ensure  => present,
        uid     => 4012,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "jsheabia",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/jsheabia",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "dholstege":
        ensure  => present,
        uid     => 4013,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "dholstege",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/dholstege",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
    user { "jemin":
        ensure  => present,
        uid     => 4014,
        gid     => 3999,
        password => "!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "jemin",
        purge_ssh_keys => true,
        managehome => true,
        home    => "/home/jemin",
    }
    ssh_authorized_key { "":
        user    => "",
        type    => ssh-rsa,
        key     => "",
    }
}
