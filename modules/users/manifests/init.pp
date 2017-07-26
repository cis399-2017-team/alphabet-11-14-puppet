class users {

    group { "cis399":
        ensure  => present,
        gid     => 3999,
        
    }

    user { "nsato10":
        ensure  => present,
        uid     => 4000,
        gid     => 3999,
        home    => "/home/nsato10",
        password => "!!",
        password_max_age => "99999",
        password_min_age => "0",
        shell   => "/bin/bash",
        comment => "nsato10",
        purge_ssh_keys => true,
    }

    ssh_authorized_key { "nsato10":
        user    => "nsato10",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCH7Lspv4byYSdvKzSkh29q6lKco/f7WuiRVg06MeRiRqFDSknppvHoiAap1T3yVs8CH1wiWux9N1B2lEEqUMxFwxdR6vlgKkr8ACOLKVBBX3QPZSv5/jdaPENBqhIOQzQSv35vjNM6atPQ810fpKwoVtemFz4jfXP64GT91HK0oPbEMcTZOHJ2PBSx2l77K6/md/tF0JqK0voL6nz63X3npFuR3qdJ0kxLQghkdzAEryEsuTSn/KxBa2X/fyjfiGQY2h9sEG6fQLFdpTsj3zBmCxyksSUnxR3b+fkfjknJiHiuncu0CzchSbZXodah9zC/UGHo4L0LVAcMeBmvEQYF",
    }
    ssh_authorized_key { "nsato-pi":
        user    => "nsato10",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCncPcBq1hdCxdWQlawxi5nsXpy1xSCb6b1cAYP3MhYsmQbC5IawyK2nfwKr9AOok2WgRaYkjFWEoCifYYNl2NIIid3dMct/hvO/zYPe4Pp1IRn+C83DlGPH1/LPayNx56E0pwgpiOxjN4vzcI2M+/BQFKnaSS/3JUpTs5voh9t4UcwdWgWWQINXi6Xo8UMXX3tIeDrkswkSV1FXfCf5Iv5ErFsNIKGIvxGQNU/yQ/3DhluDsfq2lbTnqeZ1PFP48eaZx6qh/oykB20v0hG/E6ltLHmKSqZKsUs+mk7tKvdi4ZhlgxYr4I1GApep7TQ41C7Y7QMnT9l9P20d9ZVrRmB",
    }

    ssh_authorized_key { "nsato-iphone":
        user    => "nsato10",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDur6AA0f4QxQmi02Kch9bt7G7GooxckDQewZwv55Q+aMOHYhHJrBt8lt9qiXDmAYG61rNfzfIv69bAcxKvOb+yPd4M+eUCGeyvlCm6AAHeRzKe8EhNZ4IaW1qNVUbcTk8hW0xNbsFKI64AeQw6U70HR9B1LBf7xbU3w9VvTpQGAuWpceWQErm6T19chun1crHZi+W3laKL/5YeJcG4GYJBpEP7RLqj3AY7jwfwQrFnPIuyRVynMXnY2XoLUrSLxRgSsvyEw2mgY0RcnEdKb/4f/+dNr7BokZI3jADduxrJf0/XSNwFYL+1Aj/hcQdo600rcpztvVGtbJ/y2YwlttbZ",
    }

    ssh_authorized_key { "nsato-ipad":
        user    => "nsato10",
        type    => ssh-rsa,
        key     => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDiwfz7u1GaJ6Q0bS4YCoVBAgIgXebJR94hNqC55n8c7WdwHm2LhGSVrcM27QBTGVzDdgVT/g9O7SF+d5tyEW9iDEPKmz4qCZQZGTq+em9HATPS+c55n/hnOP1B4DO7b+At8e6cNERZpS9WgbEOwjoh8rXMfl5u7k/BqiOyR0UUpjSTXf4RGrVszU++qtDrhtt26qr+dWSw71iVVbdQntvhoqZ90r8A12El2FPS3L+M184i5OnLaq1GxWyV3mpXvpmg//anlQBoGh0x2DnrqTDsWYCYhYryYznCGDXqVsKwC0k+wdPm72QmEAlNT2SktKJrqu+37zuahYcXjxmuiNsF",
    }
}
