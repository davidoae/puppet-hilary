class dse::apt ($username, $password) {
    include apt
    apt::source { 'dse':
        location    => "http://$username:$password@debian.datastax.com/enterprise",
        repos       => 'stable main',
        release     => '',
        key         => { 'source'   => 'http://debian.datastax.com/debian/repo_key',
                         'id'       => 'B4FE9662'
                       },
    }
}
