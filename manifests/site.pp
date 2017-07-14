node ip-10-0-6-22 {
    cron { "puppet update":
        command => "cd /etc/puppet && git pull -q origin master",
        user    => root,
        minute  => "*/5",
    }
    include sshd
}

node ip-10-0-6-17 {
}

node ip-10-0-6-128 {
}
