class oaeservice::deps::ppa::oae {
    include apt
    apt::key { 'stuart-freeman': 'id' => '52340974' }
    apt::key { 'branden-visser': 'id' => 'B77CA805' }
    apt::ppa { 'ppa:oae/deps': }
}
