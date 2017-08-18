class inspircd {
    package { "inspircd":
        ensure  => installed,
    }
    file { "/etc/inspircd/inspircd.conf":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/inspircd/inspircd.conf",
        require => Package["inspircd"],
    }
    file { "/etc/inspircd/inspircd.motd":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/inspircd/inspircd.motd",
        require => Package["inspircd"],
    }
    file { "/etc/inspircd/inspircd.rules":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/inspircd/inspircd.rules",
        require => Package["inspircd"],
    }
    service { "inspircd":
        enable      => true,
        ensure      => running,
        hasstatus  => true,
        hasrestart  => true,
        require     => [ Package["inspircd"],
                         File["/etc/inspircd/inspircd.conf"],
                         File["/etc/inspircd/inspircd.motd"],
                         File["/etc/inspircd/inspircd.rules"] ],
    }

    package { "anope":
        ensure => installed,
    }
    file { "/etc/anope/services.conf":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/inspircd/anope.conf",
        require => Package["anope"],
    }
    file { "/var/lib/anope/db/backups":
        ensure  => directory,
        mode    => 0740,
        owner   => root,
        group   => root,
    }
    service { "anope":
        enable      => true,
        ensure      => running,
        hasstatus   => true,
        require     => [ Package["anope"],
                         File["/var/lib/anope/db/backups"],
                         File["/etc/anope/services.conf"] ],
        subscribe   => [ File["/etc/anope/services.conf"] ],
    }
}
