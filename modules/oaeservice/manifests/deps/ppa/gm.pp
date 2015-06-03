class oaeservice::deps::ppa::gm {
    include apt
    apt::key { 'pteichman': 'id' => '6159DD90' }
    apt::ppa { 'ppa:pteichman/graphicsmagick': }
}
