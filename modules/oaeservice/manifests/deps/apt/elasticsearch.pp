class oaeservice::deps::apt::elasticsearch {
    ::apt::source { 'elasticsearch':
        location    => 'http://packages.elasticsearch.org/elasticsearch/1.5/debian',
        release     => 'stable',
        repos       => 'main',
        key         => { 'id' => 'D88E42B4' },
    }
}
