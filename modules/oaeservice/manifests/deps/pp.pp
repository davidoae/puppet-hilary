class oaeservice::deps::pp {
  include oaeservice::deps::common
  include oaeservice::deps::ppa::oae

  $phantomjs_version = hiera('phantomjs_version')
  $phantomjs_checksum = hiera('phantomjs_checksum')

  # Necessary packages for phantomjs and other PP functionality
  $pp_packages = [
    'libreoffice',
    'pdftk',
    'chrpath',
    'libfontconfig1-dev',
    'fonts-international'
  ]
  package { $pp_packages: ensure => installed }

  archive { "phantomjs-${phantomjs_version}-linux-x86_64":
    ensure        => present,
    url           => "https://phantomjs.googlecode.com/files/phantomjs-${phantomjs_version}-linux-x86_64.tar.bz2",
    digest_string => $phantomjs_checksum,
    target        => '/opt',
    extension     => 'tar.bz2',
    src_target    => '/opt',
  }

}
