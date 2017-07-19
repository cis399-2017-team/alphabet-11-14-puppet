class apache2 {
    package { "apache2":
        ensure => installed,
    }

    file { "/etc/apache2/apache2.conf":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/apache2/apache2.conf",
        require => Package["apache2"],
    }

    file { "/etc/apache2/sites-available/000-default.conf":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/apache2/000-default.conf",
        require => Package["apache2"],
    }

    file { "/var/www/html":
        ensure  => directory,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/apache2/html",
        recurse => true,
    }
    
    service { "apache2":
        enable      => true,
        ensure      => running,
        hasstatus  => true,
        hasrestart  => true,
        require     => [ Package["apache2"],
                         File["/etc/apache2/apache2.conf"],
                         File["/etc/apache2/sites-available/000-default.conf"] ],
        subscribe   => [ File["/etc/apache2/apache2.conf"],
                         File["/etc/apache2/sites-available/000-default.conf"] ],
    }
}
