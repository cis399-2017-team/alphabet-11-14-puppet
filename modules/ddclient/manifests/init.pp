class ddclient {
    package { "ddclient":
        ensure => installed,
    }

    file { "/etc/ddclient.conf":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/ddclient/ddclient.conf",
        require => Package["ddclient"],
    }

    service { "ddclient":
        enable      => true,
        ensure      => running,
        hasstatus  => true,
        hasrestart  => true,
        require     => [ Package["ddclient"],
                         File["/etc/ddclient.conf"] ],
        subscribe   => File["/etc/ddclient.conf"],
    }
}
