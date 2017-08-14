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
    service { "inspircd":
        enable      => true,
        ensure      => running,
        hasstatus  => true,
        hasrestart  => true,
        require     => [ Package["inspircd"],
                         File["/etc/inspircd/inspircd.conf"] ],
        subscribe   => [ File["/etc/inspircd/inspircd.conf"] ],
    }
}
