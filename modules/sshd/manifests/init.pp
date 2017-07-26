class sshd {
    package { "openssh-server":
        ensure => installed,
    }
    
    file { "/etc/ssh/sshd_config":
        ensure  => present,
        mode    => 644,
        owner   => root,
        group   => root,
        source  => "puppet:///modules/sshd/sshd_config",
        require => Package["openssh-server"],
    }
    
    service { "ssh":
        enable      => true,
        ensure      => running,
        hasstatus  => true,
        hasrestart  => true,
        require     => [ Package["openssh-server"],
                         File["/etc/ssh/sshd_config"] ],
        subscribe   => File["/etc/ssh/sshd_config"],
        #This causes writes to sshd_config to trigger service ssh restart
    }

    user { "ubuntu":
        ensure  => present,
        home    => "/home/ubuntu",
        purge_ssh_keys => true,
    }

    ssh_authorized_key { "nsato10":
        user    => "ubuntu",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCH7Lspv4byYSdvKzSkh29q6lKco/f7WuiRVg06MeRiRqFDSknppvHoiAap1T3yVs8CH1wiWux9N1B2lEEqUMxFwxdR6vlgKkr8ACOLKVBBX3QPZSv5/jdaPENBqhIOQzQSv35vjNM6atPQ810fpKwoVtemFz4jfXP64GT91HK0oPbEMcTZOHJ2PBSx2l77K6/md/tF0JqK0voL6nz63X3npFuR3qdJ0kxLQghkdzAEryEsuTSn/KxBa2X/fyjfiGQY2h9sEG6fQLFdpTsj3zBmCxyksSUnxR3b+fkfjknJiHiuncu0CzchSbZXodah9zC/UGHo4L0LVAcMeBmvEQYF",
    }
    
    ssh_authorized_key { "loganr":
        user    => "ubuntu",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAACAQC2H7AV3pr9nCZfYDHp5Ji1RLQozWYCC9PfodqvEBLY4S+RHsVWMuyenSEdf0mMuYT6QISk2hG5aTZD1psMPK8glFIt0UQ1m8ZPWaUzUogM95WWazwnzfiLcPLAPYRnMBMLO0yFFPlVFSWEOLQ7jMoM/eXOpPzZdZ8iDKa/Fe3tJqnJaNDncxzqvvRjyMWt5+OUidah+DkKWwzymQ+XH/ypIXY5+6bzcBfkb4Z1/ijRbcu7pGu01fWLRWCvy/bJDqBFgSEIGTSngVd/B0oXOGqvdwScgldVoIKExwzSQ7JDITmOTkej/VpwUC3lKM21a+HG85AB5YoPqFr/6ih1FORfQbmjoWdT4VAJoFH6WfngoqcOfci3qa+BNDecRiOuQbNu65ptPfOhJh7aiuDdL+tmY+C00gtbVDhLTYTM5jepembpFcv/7f2O9VtWJpPXZ4u1WkaffmqH3ZqV+/ET7wxDZeGgr6RvoG88UxdWUvr/wHgJvngEz4Y1DHitwCzCXIko0kH73eaIt8kaJUEdOl6FceoBZBK9i2mNktnd5sWtsxAXO/1GOR7a0Mw+XCUI9r8sN6B5fX9wbnBNj2kClEJLInvIVxeQqIw2NH2FzYgxKySCH4h04yoZR0fUSgPHxEdUQPM6X/lZDYX1bVd+NNsu9YQuRH4JLEclE5vTLIXLxw==",
    }

    ssh_authorized_key { "mheb-kp":
        user    => "ubuntu",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCuCLdcGf5coUzGaSKxbAD3dSFAmZSmZ6glZhGDEs1mZF6nt66Cb5S2Klo4AboLSMvC8UUpaMSzj1rV4GjQ0Dhbupo37dNx8FVwJTvxe1EFMjM4hyt7bLquNJrDEW1GufONY+RLhROrKwoQUcAjI7tq9O74lZq+5Cb6YIk+voeBzM+odGZVnP8IWDBBhLLOa2nln9VWlpQO5x3fEXRJKcPlANnwRlQxzJLsyCUNBavzG+nLf8vtwKvFtnMini1gARrwrnV3pm+ditBNn8IyyIK5jtUovESfGl3ESW2ba+zUBca3p8xh5DHceN0ua6rfqo4LS3mkE2mvOVeJWNXmxOJV",
    }

    ssh_authorized_key { "nsato-pi":
        user    => ["ubuntu","nsato10"]
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCncPcBq1hdCxdWQlawxi5nsXpy1xSCb6b1cAYP3MhYsmQbC5IawyK2nfwKr9AOok2WgRaYkjFWEoCifYYNl2NIIid3dMct/hvO/zYPe4Pp1IRn+C83DlGPH1/LPayNx56E0pwgpiOxjN4vzcI2M+/BQFKnaSS/3JUpTs5voh9t4UcwdWgWWQINXi6Xo8UMXX3tIeDrkswkSV1FXfCf5Iv5ErFsNIKGIvxGQNU/yQ/3DhluDsfq2lbTnqeZ1PFP48eaZx6qh/oykB20v0hG/E6ltLHmKSqZKsUs+mk7tKvdi4ZhlgxYr4I1GApep7TQ41C7Y7QMnT9l9P20d9ZVrRmB",
    }

    ssh_authorized_key { "nsato-iphone":
        user    => "ubuntu",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDur6AA0f4QxQmi02Kch9bt7G7GooxckDQewZwv55Q+aMOHYhHJrBt8lt9qiXDmAYG61rNfzfIv69bAcxKvOb+yPd4M+eUCGeyvlCm6AAHeRzKe8EhNZ4IaW1qNVUbcTk8hW0xNbsFKI64AeQw6U70HR9B1LBf7xbU3w9VvTpQGAuWpceWQErm6T19chun1crHZi+W3laKL/5YeJcG4GYJBpEP7RLqj3AY7jwfwQrFnPIuyRVynMXnY2XoLUrSLxRgSsvyEw2mgY0RcnEdKb/4f/+dNr7BokZI3jADduxrJf0/XSNwFYL+1Aj/hcQdo600rcpztvVGtbJ/y2YwlttbZ",
    }

    ssh_authorized_key { "nsato-ipad":
        user    => "ubuntu",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDiwfz7u1GaJ6Q0bS4YCoVBAgIgXebJR94hNqC55n8c7WdwHm2LhGSVrcM27QBTGVzDdgVT/g9O7SF+d5tyEW9iDEPKmz4qCZQZGTq+em9HATPS+c55n/hnOP1B4DO7b+At8e6cNERZpS9WgbEOwjoh8rXMfl5u7k/BqiOyR0UUpjSTXf4RGrVszU++qtDrhtt26qr+dWSw71iVVbdQntvhoqZ90r8A12El2FPS3L+M184i5OnLaq1GxWyV3mpXvpmg//anlQBoGh0x2DnrqTDsWYCYhYryYznCGDXqVsKwC0k+wdPm72QmEAlNT2SktKJrqu+37zuahYcXjxmuiNsF",
    }
}
