class oaeservice::deps::apt::switch {
    ::apt::key { 'switch.ch':
        id          => '15B76742',
        source      => 'http://pkg.switch.ch/switchaai/SWITCHaai-swdistrib.asc',
    }
    ::apt::source { 'switch.ch':
        location    => 'http://pkg.switch.ch/switchaai/ubuntu',
        release     => 'precise',
        repos       => 'main',
        key         => { 'id' => '15B76742' },
    }
}
