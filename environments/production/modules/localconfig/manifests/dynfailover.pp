class dynfailover {

    $dynamichost = hiera('dynamichost')
    $dynapiuser  = hiera('dynapiuser')
    $dynapipass  = hiera('dynapipass')

    $web0ip = Externalip <<| name == 'web0' |>>
    $web1ip = Externalip <<| name == 'web1' |>>

    file ( 'dyn_failover':
        path    => "/usr/local/bin/dyn_failover",
        mode    => 0755,
        content => template('localconfig/dyn_failover.erb')
    }

    cron ( 'dynfailover':
        ensure  => present,
        command => "/usr/local/bin/dyn_failover",
        user    => 'root',
        target  => 'root',
        minute  => '*/5'
    }
}

