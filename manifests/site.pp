node ip-10-0-6-22 {
    cron { "puppet update":
        command => "cd /etc/puppet && git pull -q origin master",
        user    => root,
        minute  => "*/5",
    }

    cron { "puppet agent autoconfigure":
        command => "puppet agent -t",
        user    => root,
        minute  => "*/5",
    }

    include sshd
    include apache2
    include users
}

node ip-10-0-6-17 {
    cron { "puppet agent autoconfigure":
        command => "puppet agent -t",
        user    => root,
        minute  => "*/5",
    }

    include sshd
    include apache2
}

node ip-10-0-6-128 {
    cron { "puppet agent autoconfigure":
        command => "puppet agent -t",
        user    => root,
        minute  => "*/5",
    }

    include sshd
    include apache2
}
